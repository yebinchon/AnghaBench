
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_c_ctx {int list; } ;
struct pblk {int dummy; } ;
struct nvm_rq {int dummy; } ;


 int list_del (int *) ;
 unsigned long pblk_end_w_bio (struct pblk*,struct nvm_rq*,struct pblk_c_ctx*) ;

__attribute__((used)) static unsigned long pblk_end_queued_w_bio(struct pblk *pblk,
        struct nvm_rq *rqd,
        struct pblk_c_ctx *c_ctx)
{
 list_del(&c_ctx->list);
 return pblk_end_w_bio(pblk, rqd, c_ctx);
}
