
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int blk; scalar_t__ reserved; } ;
struct ppa_addr {TYPE_2__ a; } ;
struct pblk_line_meta {int blk_per_line; } ;
struct pblk_line {int id; int left_eblks; int erase_bitmap; int lock; int blk_bitmap; } ;
struct pblk {int min_write_pgs; TYPE_1__* luns; struct pblk_line_meta lm; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int dummy; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
struct nvm_rq {int nr_ppas; } ;
struct TYPE_3__ {struct ppa_addr bppa; } ;


 int ENOSPC ;
 int atomic_dec (int *) ;
 scalar_t__ bitmap_weight (int ,int) ;
 int find_next_bit (int ,int,int) ;
 struct ppa_addr* nvm_rq_to_ppa_list (struct nvm_rq*) ;
 void* pblk_get_meta (struct pblk*,void*,int) ;
 void* pblk_get_meta_for_writes (struct pblk*,struct nvm_rq*) ;
 struct pblk_line* pblk_line_get_data (struct pblk*) ;
 struct pblk_line* pblk_line_get_erase (struct pblk*) ;
 int pblk_map_page_data (struct pblk*,unsigned int,struct ppa_addr*,unsigned long*,void*,unsigned int) ;
 int pblk_map_rq (struct pblk*,struct nvm_rq*,unsigned int,unsigned long*,unsigned int,int) ;
 int pblk_ppa_empty (struct ppa_addr) ;
 int pblk_ppa_to_pos (struct nvm_geo*,struct ppa_addr) ;
 int set_bit (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int,int ) ;
 scalar_t__ unlikely (int ) ;

int pblk_map_erase_rq(struct pblk *pblk, struct nvm_rq *rqd,
         unsigned int sentry, unsigned long *lun_bitmap,
         unsigned int valid_secs, struct ppa_addr *erase_ppa)
{
 struct nvm_tgt_dev *dev = pblk->dev;
 struct nvm_geo *geo = &dev->geo;
 struct pblk_line_meta *lm = &pblk->lm;
 void *meta_list = pblk_get_meta_for_writes(pblk, rqd);
 void *meta_buffer;
 struct ppa_addr *ppa_list = nvm_rq_to_ppa_list(rqd);
 struct pblk_line *e_line, *d_line;
 unsigned int map_secs;
 int min = pblk->min_write_pgs;
 int i, erase_lun;
 int ret;


 for (i = 0; i < rqd->nr_ppas; i += min) {
  map_secs = (i + min > valid_secs) ? (valid_secs % min) : min;
  meta_buffer = pblk_get_meta(pblk, meta_list, i);

  ret = pblk_map_page_data(pblk, sentry + i, &ppa_list[i],
     lun_bitmap, meta_buffer, map_secs);
  if (ret)
   return ret;

  erase_lun = pblk_ppa_to_pos(geo, ppa_list[i]);




  e_line = pblk_line_get_erase(pblk);
  if (!e_line)
   return pblk_map_rq(pblk, rqd, sentry, lun_bitmap,
       valid_secs, i + min);

  spin_lock(&e_line->lock);
  if (!test_bit(erase_lun, e_line->erase_bitmap)) {
   set_bit(erase_lun, e_line->erase_bitmap);
   atomic_dec(&e_line->left_eblks);

   *erase_ppa = ppa_list[i];
   erase_ppa->a.blk = e_line->id;
   erase_ppa->a.reserved = 0;

   spin_unlock(&e_line->lock);


   return pblk_map_rq(pblk, rqd, sentry, lun_bitmap,
       valid_secs, i + min);
  }
  spin_unlock(&e_line->lock);
 }

 d_line = pblk_line_get_data(pblk);




 e_line = pblk_line_get_erase(pblk);
 if (!e_line)
  return -ENOSPC;


 if (unlikely(pblk_ppa_empty(*erase_ppa)) &&
   bitmap_weight(d_line->blk_bitmap, lm->blk_per_line)) {
  int bit = -1;

retry:
  bit = find_next_bit(d_line->blk_bitmap,
      lm->blk_per_line, bit + 1);
  if (bit >= lm->blk_per_line)
   return 0;

  spin_lock(&e_line->lock);
  if (test_bit(bit, e_line->erase_bitmap)) {
   spin_unlock(&e_line->lock);
   goto retry;
  }
  spin_unlock(&e_line->lock);

  set_bit(bit, e_line->erase_bitmap);
  atomic_dec(&e_line->left_eblks);
  *erase_ppa = pblk->luns[bit].bppa;
  erase_ppa->a.blk = e_line->id;
 }

 return 0;
}
