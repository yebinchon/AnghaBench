
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pblk_line_mgmt {int bad_list; int bb_aux; int bb_template; } ;
struct pblk_line_meta {int sec_per_line; int blk_per_line; int smeta_sec; int* emeta_sec; } ;
struct pblk_line {int sec_in_line; int cur_sec; int emeta_ssec; int left_msecs; int id; int list; int lock; int state; int invalid_bitmap; int * vsc; scalar_t__ nr_valid_lbas; int map_bitmap; int blk_bitmap; } ;
struct pblk {struct pblk_line_mgmt l_mg; struct pblk_line_meta lm; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int ws_opt; scalar_t__ clba; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;


 int PBLK_LINESTATE_BAD ;
 int bitmap_copy (int ,int ,int) ;
 int bitmap_or (int ,int ,int ,int) ;
 int bitmap_set (int ,int,int) ;
 int bitmap_shift_left (int ,int ,int,int) ;
 scalar_t__ bitmap_weight (int ,scalar_t__) ;
 int cpu_to_le32 (int) ;
 int find_first_zero_bit (int ,int) ;
 int find_next_bit (int ,int,int) ;
 int list_add_tail (int *,int *) ;
 int pblk_debug (struct pblk*,char*) ;
 int pblk_disk_name (struct pblk*) ;
 int pblk_err (struct pblk*,char*,int ) ;
 scalar_t__ pblk_line_smeta_write (struct pblk*,struct pblk_line*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int,int ) ;
 int trace_pblk_line_state (int ,int ,int ) ;

__attribute__((used)) static int pblk_line_init_bb(struct pblk *pblk, struct pblk_line *line,
        int init)
{
 struct nvm_tgt_dev *dev = pblk->dev;
 struct nvm_geo *geo = &dev->geo;
 struct pblk_line_meta *lm = &pblk->lm;
 struct pblk_line_mgmt *l_mg = &pblk->l_mg;
 u64 off;
 int bit = -1;
 int emeta_secs;

 line->sec_in_line = lm->sec_per_line;


 while ((bit = find_next_bit(line->blk_bitmap, lm->blk_per_line,
     bit + 1)) < lm->blk_per_line) {
  off = bit * geo->ws_opt;
  bitmap_shift_left(l_mg->bb_aux, l_mg->bb_template, off,
       lm->sec_per_line);
  bitmap_or(line->map_bitmap, line->map_bitmap, l_mg->bb_aux,
       lm->sec_per_line);
  line->sec_in_line -= geo->clba;
 }


 bit = find_first_zero_bit(line->blk_bitmap, lm->blk_per_line);
 off = bit * geo->ws_opt;
 bitmap_set(line->map_bitmap, off, lm->smeta_sec);
 line->sec_in_line -= lm->smeta_sec;
 line->cur_sec = off + lm->smeta_sec;

 if (init && pblk_line_smeta_write(pblk, line, off)) {
  pblk_debug(pblk, "line smeta I/O failed. Retry\n");
  return 0;
 }

 bitmap_copy(line->invalid_bitmap, line->map_bitmap, lm->sec_per_line);




 emeta_secs = lm->emeta_sec[0];
 off = lm->sec_per_line;
 while (emeta_secs) {
  off -= geo->ws_opt;
  if (!test_bit(off, line->invalid_bitmap)) {
   bitmap_set(line->invalid_bitmap, off, geo->ws_opt);
   emeta_secs -= geo->ws_opt;
  }
 }

 line->emeta_ssec = off;
 line->sec_in_line -= lm->emeta_sec[0];
 line->nr_valid_lbas = 0;
 line->left_msecs = line->sec_in_line;
 *line->vsc = cpu_to_le32(line->sec_in_line);

 if (lm->sec_per_line - line->sec_in_line !=
  bitmap_weight(line->invalid_bitmap, lm->sec_per_line)) {
  spin_lock(&line->lock);
  line->state = PBLK_LINESTATE_BAD;
  trace_pblk_line_state(pblk_disk_name(pblk), line->id,
     line->state);
  spin_unlock(&line->lock);

  list_add_tail(&line->list, &l_mg->bad_list);
  pblk_err(pblk, "unexpected line %d is bad\n", line->id);

  return 0;
 }

 return 1;
}
