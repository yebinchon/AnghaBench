
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct pblk_line {int ref; } ;
struct pblk {int trans_lock; } ;
typedef scalar_t__ sector_t ;


 int kref_get (int *) ;
 int pblk_addr_in_cache (struct ppa_addr) ;
 int pblk_ppa_empty (struct ppa_addr) ;
 struct pblk_line* pblk_ppa_to_line (struct pblk*,struct ppa_addr) ;
 struct ppa_addr pblk_trans_map_get (struct pblk*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int pblk_lookup_l2p_seq(struct pblk *pblk, struct ppa_addr *ppas,
    sector_t blba, int nr_secs, bool *from_cache)
{
 int i;

 spin_lock(&pblk->trans_lock);
 for (i = 0; i < nr_secs; i++) {
  struct ppa_addr ppa;

  ppa = ppas[i] = pblk_trans_map_get(pblk, blba + i);


  if (!pblk_ppa_empty(ppa) && !pblk_addr_in_cache(ppa)) {
   struct pblk_line *line = pblk_ppa_to_line(pblk, ppa);

   if (i > 0 && *from_cache)
    break;
   *from_cache = 0;

   kref_get(&line->ref);
  } else {
   if (i > 0 && !*from_cache)
    break;
   *from_cache = 1;
  }
 }
 spin_unlock(&pblk->trans_lock);
 return i;
}
