
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct pblk {int trans_lock; } ;
typedef scalar_t__ sector_t ;


 int pblk_addr_in_cache (struct ppa_addr) ;
 int pblk_map_invalidate (struct pblk*,struct ppa_addr) ;
 int pblk_ppa_empty (struct ppa_addr) ;
 int pblk_ppa_set_empty (struct ppa_addr*) ;
 struct ppa_addr pblk_trans_map_get (struct pblk*,scalar_t__) ;
 int pblk_trans_map_set (struct pblk*,scalar_t__,struct ppa_addr) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void pblk_invalidate_range(struct pblk *pblk, sector_t slba,
      unsigned int nr_secs)
{
 sector_t lba;

 spin_lock(&pblk->trans_lock);
 for (lba = slba; lba < slba + nr_secs; lba++) {
  struct ppa_addr ppa;

  ppa = pblk_trans_map_get(pblk, lba);

  if (!pblk_addr_in_cache(ppa) && !pblk_ppa_empty(ppa))
   pblk_map_invalidate(pblk, ppa);

  pblk_ppa_set_empty(&ppa);
  pblk_trans_map_set(pblk, lba, ppa);
 }
 spin_unlock(&pblk->trans_lock);
}
