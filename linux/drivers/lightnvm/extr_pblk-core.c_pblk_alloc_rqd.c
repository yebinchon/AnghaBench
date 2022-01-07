
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int e_rq_pool; int r_rq_pool; int w_rq_pool; } ;
struct nvm_rq {int dummy; } ;
typedef int mempool_t ;


 int GFP_KERNEL ;



 struct nvm_rq* mempool_alloc (int *,int ) ;
 int memset (struct nvm_rq*,int ,int) ;
 int pblk_g_rq_size ;
 int pblk_w_rq_size ;

struct nvm_rq *pblk_alloc_rqd(struct pblk *pblk, int type)
{
 mempool_t *pool;
 struct nvm_rq *rqd;
 int rq_size;

 switch (type) {
 case 129:
 case 128:
  pool = &pblk->w_rq_pool;
  rq_size = pblk_w_rq_size;
  break;
 case 130:
  pool = &pblk->r_rq_pool;
  rq_size = pblk_g_rq_size;
  break;
 default:
  pool = &pblk->e_rq_pool;
  rq_size = pblk_g_rq_size;
 }

 rqd = mempool_alloc(pool, GFP_KERNEL);
 memset(rqd, 0, rq_size);

 return rqd;
}
