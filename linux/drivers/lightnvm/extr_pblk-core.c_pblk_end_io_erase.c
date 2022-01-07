
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int e_rq_pool; } ;
struct nvm_rq {struct pblk* private; } ;


 int __pblk_end_io_erase (struct pblk*,struct nvm_rq*) ;
 int mempool_free (struct nvm_rq*,int *) ;

__attribute__((used)) static void pblk_end_io_erase(struct nvm_rq *rqd)
{
 struct pblk *pblk = rqd->private;

 __pblk_end_io_erase(pblk, rqd);
 mempool_free(rqd, &pblk->e_rq_pool);
}
