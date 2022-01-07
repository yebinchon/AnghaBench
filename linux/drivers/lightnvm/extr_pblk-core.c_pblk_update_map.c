
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct pblk {scalar_t__ capacity; int trans_lock; } ;
typedef scalar_t__ sector_t ;


 int WARN (int,char*) ;
 int pblk_addr_in_cache (struct ppa_addr) ;
 int pblk_map_invalidate (struct pblk*,struct ppa_addr) ;
 int pblk_ppa_empty (struct ppa_addr) ;
 struct ppa_addr pblk_trans_map_get (struct pblk*,scalar_t__) ;
 int pblk_trans_map_set (struct pblk*,scalar_t__,struct ppa_addr) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void pblk_update_map(struct pblk *pblk, sector_t lba, struct ppa_addr ppa)
{
 struct ppa_addr ppa_l2p;


 if (!(lba < pblk->capacity)) {
  WARN(1, "pblk: corrupted L2P map request\n");
  return;
 }

 spin_lock(&pblk->trans_lock);
 ppa_l2p = pblk_trans_map_get(pblk, lba);

 if (!pblk_addr_in_cache(ppa_l2p) && !pblk_ppa_empty(ppa_l2p))
  pblk_map_invalidate(pblk, ppa_l2p);

 pblk_trans_map_set(pblk, lba, ppa);
 spin_unlock(&pblk->trans_lock);
}
