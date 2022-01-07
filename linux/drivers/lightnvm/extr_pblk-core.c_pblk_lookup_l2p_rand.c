
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ppa_addr {int dummy; } ;
struct pblk {scalar_t__ capacity; int trans_lock; } ;


 scalar_t__ ADDR_EMPTY ;
 int WARN (int,char*) ;
 struct ppa_addr pblk_trans_map_get (struct pblk*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void pblk_lookup_l2p_rand(struct pblk *pblk, struct ppa_addr *ppas,
     u64 *lba_list, int nr_secs)
{
 u64 lba;
 int i;

 spin_lock(&pblk->trans_lock);
 for (i = 0; i < nr_secs; i++) {
  lba = lba_list[i];
  if (lba != ADDR_EMPTY) {

   if (!(lba < pblk->capacity)) {
    WARN(1, "pblk: corrupted L2P map request\n");
    continue;
   }
   ppas[i] = pblk_trans_map_get(pblk, lba);
  }
 }
 spin_unlock(&pblk->trans_lock);
}
