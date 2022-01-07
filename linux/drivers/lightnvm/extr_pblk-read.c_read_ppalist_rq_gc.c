
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ppa_addr {int dummy; } ;
struct pblk_line {int id; } ;
struct pblk {int inflight_reads; } ;
struct nvm_rq {struct ppa_addr* ppa_list; } ;


 scalar_t__ ADDR_EMPTY ;
 int NVM_MAX_VLBA ;
 struct ppa_addr addr_to_gen_ppa (struct pblk*,scalar_t__,int ) ;
 int atomic_long_add (int,int *) ;
 int pblk_lookup_l2p_rand (struct pblk*,struct ppa_addr*,scalar_t__*,unsigned int) ;
 int pblk_ppa_comp (struct ppa_addr,struct ppa_addr) ;

__attribute__((used)) static int read_ppalist_rq_gc(struct pblk *pblk, struct nvm_rq *rqd,
         struct pblk_line *line, u64 *lba_list,
         u64 *paddr_list_gc, unsigned int nr_secs)
{
 struct ppa_addr ppa_list_l2p[NVM_MAX_VLBA];
 struct ppa_addr ppa_gc;
 int valid_secs = 0;
 int i;

 pblk_lookup_l2p_rand(pblk, ppa_list_l2p, lba_list, nr_secs);

 for (i = 0; i < nr_secs; i++) {
  if (lba_list[i] == ADDR_EMPTY)
   continue;

  ppa_gc = addr_to_gen_ppa(pblk, paddr_list_gc[i], line->id);
  if (!pblk_ppa_comp(ppa_list_l2p[i], ppa_gc)) {
   paddr_list_gc[i] = lba_list[i] = ADDR_EMPTY;
   continue;
  }

  rqd->ppa_list[valid_secs++] = ppa_list_l2p[i];
 }





 return valid_secs;
}
