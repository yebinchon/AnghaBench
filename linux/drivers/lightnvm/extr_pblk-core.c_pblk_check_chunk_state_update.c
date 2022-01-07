
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ppa_addr {int dummy; } ;
struct pblk {int dummy; } ;
struct nvm_rq {int nr_ppas; } ;
struct nvm_chk_meta {int cnlb; } ;


 int NVM_CHK_ST_CLOSED ;
 int NVM_CHK_ST_OPEN ;
 struct ppa_addr* nvm_rq_to_ppa_list (struct nvm_rq*) ;
 struct nvm_chk_meta* pblk_dev_ppa_to_chunk (struct pblk*,struct ppa_addr) ;
 scalar_t__ pblk_dev_ppa_to_chunk_addr (struct pblk*,struct ppa_addr) ;
 int pblk_disk_name (struct pblk*) ;
 int trace_pblk_chunk_state (int ,struct ppa_addr*,int ) ;

void pblk_check_chunk_state_update(struct pblk *pblk, struct nvm_rq *rqd)
{
 struct ppa_addr *ppa_list = nvm_rq_to_ppa_list(rqd);

 int i;

 for (i = 0; i < rqd->nr_ppas; i++) {
  struct ppa_addr *ppa = &ppa_list[i];
  struct nvm_chk_meta *chunk = pblk_dev_ppa_to_chunk(pblk, *ppa);
  u64 caddr = pblk_dev_ppa_to_chunk_addr(pblk, *ppa);

  if (caddr == 0)
   trace_pblk_chunk_state(pblk_disk_name(pblk),
       ppa, NVM_CHK_ST_OPEN);
  else if (caddr == (chunk->cnlb - 1))
   trace_pblk_chunk_state(pblk_disk_name(pblk),
       ppa, NVM_CHK_ST_CLOSED);
 }
}
