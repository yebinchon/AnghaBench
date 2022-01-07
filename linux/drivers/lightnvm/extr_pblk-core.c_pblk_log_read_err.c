
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int read_failed; int read_high_ecc; int read_empty; } ;
struct nvm_rq {int error; } ;


 int NVM_RSP_ERR_EMPTYPAGE ;



 int atomic_long_inc (int *) ;
 int pblk_err (struct pblk*,char*,int) ;
 int pblk_print_failed_rqd (struct pblk*,struct nvm_rq*,int) ;

void pblk_log_read_err(struct pblk *pblk, struct nvm_rq *rqd)
{

 if (rqd->error == NVM_RSP_ERR_EMPTYPAGE) {
  atomic_long_inc(&pblk->read_empty);
  return;
 }

 switch (rqd->error) {
 case 128:
  atomic_long_inc(&pblk->read_high_ecc);
  break;
 case 129:
 case 130:
  atomic_long_inc(&pblk->read_failed);
  break;
 default:
  pblk_err(pblk, "unknown read error:%d\n", rqd->error);
 }



}
