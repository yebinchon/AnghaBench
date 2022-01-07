
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int write_failed; } ;
struct nvm_rq {int error; } ;


 int atomic_long_inc (int *) ;
 int pblk_print_failed_rqd (struct pblk*,struct nvm_rq*,int ) ;

void pblk_log_write_err(struct pblk *pblk, struct nvm_rq *rqd)
{
 atomic_long_inc(&pblk->write_failed);



}
