
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct md_rdev {scalar_t__ sb_start; int sb_page; int sb_size; TYPE_2__* mddev; } ;
typedef scalar_t__ sector_t ;
struct TYPE_4__ {scalar_t__ offset; } ;
struct TYPE_5__ {scalar_t__ dev_sectors; int level; TYPE_1__ bitmap_info; } ;


 scalar_t__ calc_dev_sboffset (struct md_rdev*) ;
 scalar_t__ md_super_wait (TYPE_2__*) ;
 int md_super_write (TYPE_2__*,struct md_rdev*,scalar_t__,int ,int ) ;

__attribute__((used)) static unsigned long long
super_90_rdev_size_change(struct md_rdev *rdev, sector_t num_sectors)
{
 if (num_sectors && num_sectors < rdev->mddev->dev_sectors)
  return 0;
 if (rdev->mddev->bitmap_info.offset)
  return 0;
 rdev->sb_start = calc_dev_sboffset(rdev);
 if (!num_sectors || num_sectors > rdev->sb_start)
  num_sectors = rdev->sb_start;



 if ((u64)num_sectors >= (2ULL << 32) && rdev->mddev->level >= 1)
  num_sectors = (sector_t)(2ULL << 32) - 2;
 do {
  md_super_write(rdev->mddev, rdev, rdev->sb_start, rdev->sb_size,
         rdev->sb_page);
 } while (md_super_wait(rdev->mddev) < 0);
 return num_sectors;
}
