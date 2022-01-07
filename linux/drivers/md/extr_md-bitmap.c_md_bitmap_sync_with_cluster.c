
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {struct bitmap* bitmap; } ;
struct bitmap {int dummy; } ;
typedef scalar_t__ sector_t ;


 int WARN (int,char*) ;
 int md_bitmap_end_sync (struct bitmap*,scalar_t__,scalar_t__*,int ) ;
 int md_bitmap_start_sync (struct bitmap*,scalar_t__,scalar_t__*,int ) ;

void md_bitmap_sync_with_cluster(struct mddev *mddev,
         sector_t old_lo, sector_t old_hi,
         sector_t new_lo, sector_t new_hi)
{
 struct bitmap *bitmap = mddev->bitmap;
 sector_t sector, blocks = 0;

 for (sector = old_lo; sector < new_lo; ) {
  md_bitmap_end_sync(bitmap, sector, &blocks, 0);
  sector += blocks;
 }
 WARN((blocks > new_lo) && old_lo, "alignment is not correct for lo\n");

 for (sector = old_hi; sector < new_hi; ) {
  md_bitmap_start_sync(bitmap, sector, &blocks, 0);
  sector += blocks;
 }
 WARN((blocks > new_hi) && old_hi, "alignment is not correct for hi\n");
}
