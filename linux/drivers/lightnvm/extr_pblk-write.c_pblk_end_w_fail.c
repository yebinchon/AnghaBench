
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rec_ctx {int ws_rec; struct nvm_rq* rqd; struct pblk* pblk; } ;
struct pblk {int close_wq; int rec_pool; } ;
struct nvm_rq {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 struct pblk_rec_ctx* mempool_alloc (int *,int ) ;
 int pblk_err (struct pblk*,char*) ;
 int pblk_submit_rec ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void pblk_end_w_fail(struct pblk *pblk, struct nvm_rq *rqd)
{
 struct pblk_rec_ctx *recovery;

 recovery = mempool_alloc(&pblk->rec_pool, GFP_ATOMIC);
 if (!recovery) {
  pblk_err(pblk, "could not allocate recovery work\n");
  return;
 }

 recovery->pblk = pblk;
 recovery->rqd = rqd;

 INIT_WORK(&recovery->ws_rec, pblk_submit_rec);
 queue_work(pblk->close_wq, &recovery->ws_rec);
}
