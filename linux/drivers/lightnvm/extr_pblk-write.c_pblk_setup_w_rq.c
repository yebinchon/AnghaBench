
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct pblk_line_meta {int lun_bitmap_len; } ;
struct pblk_line {int left_eblks; } ;
struct pblk_c_ctx {unsigned int nr_valid; unsigned int nr_padded; unsigned long* lun_bitmap; int sentry; } ;
struct pblk {struct pblk_line_meta lm; } ;
struct nvm_rq {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_read (int *) ;
 int kfree (unsigned long*) ;
 unsigned long* kzalloc (int ,int ) ;
 scalar_t__ likely (int) ;
 struct pblk_c_ctx* nvm_rq_to_pdu (struct nvm_rq*) ;
 int pblk_alloc_w_rq (struct pblk*,struct nvm_rq*,unsigned int,int ) ;
 int pblk_end_io_write ;
 struct pblk_line* pblk_line_get_erase (struct pblk*) ;
 int pblk_map_erase_rq (struct pblk*,struct nvm_rq*,int ,unsigned long*,unsigned int,struct ppa_addr*) ;
 int pblk_map_rq (struct pblk*,struct nvm_rq*,int ,unsigned long*,unsigned int,int ) ;

__attribute__((used)) static int pblk_setup_w_rq(struct pblk *pblk, struct nvm_rq *rqd,
      struct ppa_addr *erase_ppa)
{
 struct pblk_line_meta *lm = &pblk->lm;
 struct pblk_line *e_line = pblk_line_get_erase(pblk);
 struct pblk_c_ctx *c_ctx = nvm_rq_to_pdu(rqd);
 unsigned int valid = c_ctx->nr_valid;
 unsigned int padded = c_ctx->nr_padded;
 unsigned int nr_secs = valid + padded;
 unsigned long *lun_bitmap;
 int ret;

 lun_bitmap = kzalloc(lm->lun_bitmap_len, GFP_KERNEL);
 if (!lun_bitmap)
  return -ENOMEM;
 c_ctx->lun_bitmap = lun_bitmap;

 ret = pblk_alloc_w_rq(pblk, rqd, nr_secs, pblk_end_io_write);
 if (ret) {
  kfree(lun_bitmap);
  return ret;
 }

 if (likely(!e_line || !atomic_read(&e_line->left_eblks)))
  ret = pblk_map_rq(pblk, rqd, c_ctx->sentry, lun_bitmap,
       valid, 0);
 else
  ret = pblk_map_erase_rq(pblk, rqd, c_ctx->sentry, lun_bitmap,
       valid, erase_ppa);

 return ret;
}
