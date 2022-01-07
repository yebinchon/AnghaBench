
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct pblk {int rwb; } ;
struct bio {int dummy; } ;
typedef int sector_t ;


 int BUG_ON (int) ;
 int pblk_addr_in_cache (struct ppa_addr) ;
 int pblk_ppa_empty (struct ppa_addr) ;
 int pblk_rb_copy_to_bio (int *,struct bio*,int ,struct ppa_addr) ;

__attribute__((used)) static int pblk_read_from_cache(struct pblk *pblk, struct bio *bio,
    sector_t lba, struct ppa_addr ppa)
{






 return pblk_rb_copy_to_bio(&pblk->rwb, bio, lba, ppa);
}
