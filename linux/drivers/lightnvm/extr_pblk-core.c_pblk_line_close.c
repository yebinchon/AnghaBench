
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pblk_lun {int bppa; } ;
struct pblk_line_mgmt {int gc_lock; int bitmap_pool; int free_lock; int meta_bitmap; } ;
struct pblk_line_meta {int blk_per_line; int sec_per_line; } ;
struct pblk_line {scalar_t__ state; int id; int lock; TYPE_1__* chks; int * emeta; int * smeta; int * map_bitmap; int list; int meta_line; } ;
struct pblk {struct pblk_lun* luns; struct pblk_line_mgmt l_mg; struct pblk_line_meta lm; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int dummy; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int state; } ;


 int NVM_CHK_ST_CLOSED ;
 int NVM_CHK_ST_OFFLINE ;
 scalar_t__ PBLK_LINESTATE_CLOSED ;
 scalar_t__ PBLK_LINESTATE_OPEN ;
 int WARN (int,char*,int ) ;
 int WARN_ON (int) ;
 int bitmap_full (int *,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int mempool_free (int *,int ) ;
 int pblk_disk_name (struct pblk*) ;
 struct list_head* pblk_line_gc_list (struct pblk*,struct pblk_line*) ;
 int pblk_ppa_to_pos (struct nvm_geo*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_clear_bit (int ,int *) ;
 int trace_pblk_line_state (int ,int ,scalar_t__) ;

void pblk_line_close(struct pblk *pblk, struct pblk_line *line)
{
 struct nvm_tgt_dev *dev = pblk->dev;
 struct nvm_geo *geo = &dev->geo;
 struct pblk_line_meta *lm = &pblk->lm;
 struct pblk_line_mgmt *l_mg = &pblk->l_mg;
 struct list_head *move_list;
 int i;






 spin_lock(&l_mg->free_lock);
 WARN_ON(!test_and_clear_bit(line->meta_line, &l_mg->meta_bitmap));
 spin_unlock(&l_mg->free_lock);

 spin_lock(&l_mg->gc_lock);
 spin_lock(&line->lock);
 WARN_ON(line->state != PBLK_LINESTATE_OPEN);
 line->state = PBLK_LINESTATE_CLOSED;
 move_list = pblk_line_gc_list(pblk, line);
 list_add_tail(&line->list, move_list);

 mempool_free(line->map_bitmap, l_mg->bitmap_pool);
 line->map_bitmap = ((void*)0);
 line->smeta = ((void*)0);
 line->emeta = ((void*)0);

 for (i = 0; i < lm->blk_per_line; i++) {
  struct pblk_lun *rlun = &pblk->luns[i];
  int pos = pblk_ppa_to_pos(geo, rlun->bppa);
  int state = line->chks[pos].state;

  if (!(state & NVM_CHK_ST_OFFLINE))
   state = NVM_CHK_ST_CLOSED;
 }

 spin_unlock(&line->lock);
 spin_unlock(&l_mg->gc_lock);

 trace_pblk_line_state(pblk_disk_name(pblk), line->id,
     line->state);
}
