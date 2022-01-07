
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_c_ctx {int lun_bitmap; } ;
struct pblk {int e_rq_pool; int r_rq_pool; int w_rq_pool; } ;
struct nvm_rq {int dummy; } ;
typedef int mempool_t ;






 int kfree (int ) ;
 int mempool_free (struct nvm_rq*,int *) ;
 scalar_t__ nvm_rq_to_pdu (struct nvm_rq*) ;
 int pblk_err (struct pblk*,char*) ;
 int pblk_free_rqd_meta (struct pblk*,struct nvm_rq*) ;

void pblk_free_rqd(struct pblk *pblk, struct nvm_rq *rqd, int type)
{
 mempool_t *pool;

 switch (type) {
 case 129:
  kfree(((struct pblk_c_ctx *)nvm_rq_to_pdu(rqd))->lun_bitmap);

 case 128:
  pool = &pblk->w_rq_pool;
  break;
 case 130:
  pool = &pblk->r_rq_pool;
  break;
 case 131:
  pool = &pblk->e_rq_pool;
  break;
 default:
  pblk_err(pblk, "trying to free unknown rqd type\n");
  return;
 }

 pblk_free_rqd_meta(pblk, rqd);
 mempool_free(rqd, pool);
}
