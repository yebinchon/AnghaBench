
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct pblk {int dummy; } ;
struct nvm_rq {int nr_ppas; } ;


 struct ppa_addr* nvm_rq_to_ppa_list (struct nvm_rq*) ;
 int pblk_ppa_to_line_put (struct pblk*,struct ppa_addr) ;

void pblk_rq_to_line_put(struct pblk *pblk, struct nvm_rq *rqd)
{
 struct ppa_addr *ppa_list = nvm_rq_to_ppa_list(rqd);
 int i;

 for (i = 0; i < rqd->nr_ppas; i++)
  pblk_ppa_to_line_put(pblk, ppa_list[i]);
}
