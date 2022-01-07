
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct pblk {int dummy; } ;
struct nvm_rq {int nr_ppas; int is_seq; int * bio; struct ppa_addr ppa_addr; int opcode; } ;


 int NVM_OP_ERASE ;

__attribute__((used)) static void pblk_setup_e_rq(struct pblk *pblk, struct nvm_rq *rqd,
       struct ppa_addr ppa)
{
 rqd->opcode = NVM_OP_ERASE;
 rqd->ppa_addr = ppa;
 rqd->nr_ppas = 1;
 rqd->is_seq = 1;
 rqd->bio = ((void*)0);
}
