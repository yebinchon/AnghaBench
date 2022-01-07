
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_writes_c {int sectorshift; } ;
typedef int sector_t ;


 int SECTOR_SHIFT ;

__attribute__((used)) static inline sector_t dev_to_bio_sectors(struct log_writes_c *lc,
       sector_t sectors)
{
 return sectors << (lc->sectorshift - SECTOR_SHIFT);
}
