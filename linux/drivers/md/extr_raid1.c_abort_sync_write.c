
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1bio {long sectors; scalar_t__ sector; } ;
struct mddev {int bitmap; } ;
typedef scalar_t__ sector_t ;


 int md_bitmap_end_sync (int ,scalar_t__,scalar_t__*,int) ;

__attribute__((used)) static void abort_sync_write(struct mddev *mddev, struct r1bio *r1_bio)
{
 sector_t sync_blocks = 0;
 sector_t s = r1_bio->sector;
 long sectors_to_go = r1_bio->sectors;


 do {
  md_bitmap_end_sync(mddev->bitmap, s, &sync_blocks, 1);
  s += sync_blocks;
  sectors_to_go -= sync_blocks;
 } while (sectors_to_go > 0);
}
