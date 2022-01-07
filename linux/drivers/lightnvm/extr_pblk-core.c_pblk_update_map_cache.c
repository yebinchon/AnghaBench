
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct pblk {int rwb; } ;
typedef int sector_t ;


 int BUG_ON (int) ;
 int pblk_addr_in_cache (struct ppa_addr) ;
 int pblk_addr_to_cacheline (struct ppa_addr) ;
 int pblk_rb_pos_oob (int *,int ) ;
 int pblk_update_map (struct pblk*,int ,struct ppa_addr) ;

void pblk_update_map_cache(struct pblk *pblk, sector_t lba, struct ppa_addr ppa)
{







 pblk_update_map(pblk, lba, ppa);
}
