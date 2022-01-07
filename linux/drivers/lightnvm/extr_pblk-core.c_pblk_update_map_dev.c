
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct pblk {scalar_t__ capacity; int trans_lock; int padded_wb; int pad_wa; } ;
typedef scalar_t__ sector_t ;


 scalar_t__ ADDR_EMPTY ;
 int BUG_ON (int ) ;
 int WARN (int,char*) ;
 int WARN_ON (int) ;
 int atomic64_inc (int *) ;
 int atomic_long_inc (int *) ;
 int pblk_addr_in_cache (struct ppa_addr) ;
 int pblk_map_invalidate (struct pblk*,struct ppa_addr) ;
 int pblk_ppa_comp (struct ppa_addr,struct ppa_addr) ;
 int pblk_ppa_empty (struct ppa_addr) ;
 struct ppa_addr pblk_trans_map_get (struct pblk*,scalar_t__) ;
 int pblk_trans_map_set (struct pblk*,scalar_t__,struct ppa_addr) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void pblk_update_map_dev(struct pblk *pblk, sector_t lba,
    struct ppa_addr ppa_mapped, struct ppa_addr ppa_cache)
{
 struct ppa_addr ppa_l2p;






 if (lba == ADDR_EMPTY) {
  atomic64_inc(&pblk->pad_wa);



  if (!pblk_ppa_empty(ppa_mapped))
   pblk_map_invalidate(pblk, ppa_mapped);
  return;
 }


 if (!(lba < pblk->capacity)) {
  WARN(1, "pblk: corrupted L2P map request\n");
  return;
 }

 spin_lock(&pblk->trans_lock);
 ppa_l2p = pblk_trans_map_get(pblk, lba);




 if (!pblk_ppa_comp(ppa_l2p, ppa_cache)) {
  if (!pblk_ppa_empty(ppa_mapped))
   pblk_map_invalidate(pblk, ppa_mapped);
  goto out;
 }





 pblk_trans_map_set(pblk, lba, ppa_mapped);
out:
 spin_unlock(&pblk->trans_lock);
}
