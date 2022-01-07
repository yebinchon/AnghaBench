
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_c_ctx {int nr_valid; int list; int nr_padded; int sentry; int * lun_bitmap; } ;
struct pblk {int recov_writes; int resubmit_lock; int resubmit_list; } ;


 int GFP_KERNEL ;
 int atomic_long_add (int ,int *) ;
 struct pblk_c_ctx* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void pblk_queue_resubmit(struct pblk *pblk, struct pblk_c_ctx *c_ctx)
{
 struct pblk_c_ctx *r_ctx;

 r_ctx = kzalloc(sizeof(struct pblk_c_ctx), GFP_KERNEL);
 if (!r_ctx)
  return;

 r_ctx->lun_bitmap = ((void*)0);
 r_ctx->sentry = c_ctx->sentry;
 r_ctx->nr_valid = c_ctx->nr_valid;
 r_ctx->nr_padded = c_ctx->nr_padded;

 spin_lock(&pblk->resubmit_lock);
 list_add_tail(&r_ctx->list, &pblk->resubmit_list);
 spin_unlock(&pblk->resubmit_lock);




}
