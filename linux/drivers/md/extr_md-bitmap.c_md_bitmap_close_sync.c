
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bitmap {TYPE_1__* mddev; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {scalar_t__ resync_max_sectors; } ;


 int md_bitmap_end_sync (struct bitmap*,scalar_t__,scalar_t__*,int ) ;

void md_bitmap_close_sync(struct bitmap *bitmap)
{




 sector_t sector = 0;
 sector_t blocks;
 if (!bitmap)
  return;
 while (sector < bitmap->mddev->resync_max_sectors) {
  md_bitmap_end_sync(bitmap, sector, &blocks, 0);
  sector += blocks;
 }
}
