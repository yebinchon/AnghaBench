
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int dummy; } ;
struct nvm_rq {unsigned int nr_ppas; int is_seq; int * end_io; struct pblk* private; int opcode; } ;
typedef int nvm_end_io_fn ;


 int NVM_OP_PWRITE ;
 int pblk_alloc_rqd_meta (struct pblk*,struct nvm_rq*) ;

__attribute__((used)) static int pblk_alloc_w_rq(struct pblk *pblk, struct nvm_rq *rqd,
      unsigned int nr_secs, nvm_end_io_fn(*end_io))
{

 rqd->opcode = NVM_OP_PWRITE;
 rqd->nr_ppas = nr_secs;
 rqd->is_seq = 1;
 rqd->private = pblk;
 rqd->end_io = end_io;

 return pblk_alloc_rqd_meta(pblk, rqd);
}
