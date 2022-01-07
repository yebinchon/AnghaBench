
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ppa_addr {int ppa; } ;
struct pblk {int addrf_len; scalar_t__ trans_map; } ;
typedef size_t sector_t ;


 int pblk_ppa64_to_ppa32 (struct pblk*,struct ppa_addr) ;

__attribute__((used)) static inline void pblk_trans_map_set(struct pblk *pblk, sector_t lba,
      struct ppa_addr ppa)
{
 if (pblk->addrf_len < 32) {
  u32 *map = (u32 *)pblk->trans_map;

  map[lba] = pblk_ppa64_to_ppa32(pblk, ppa);
 } else {
  u64 *map = (u64 *)pblk->trans_map;

  map[lba] = ppa.ppa;
 }
}
