
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int dummy; } ;
struct bio {int dummy; } ;
typedef int sector_t ;


 int pblk_get_lba (struct bio*) ;
 int pblk_get_secs (struct bio*) ;
 int pblk_invalidate_range (struct pblk*,int ,int ) ;

void pblk_discard(struct pblk *pblk, struct bio *bio)
{
 sector_t slba = pblk_get_lba(bio);
 sector_t nr_secs = pblk_get_secs(bio);

 pblk_invalidate_range(pblk, slba, nr_secs);
}
