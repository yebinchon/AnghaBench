
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int raid_disks; } ;
struct raid_set {TYPE_2__* dev; TYPE_1__ md; } ;
struct md_rdev {scalar_t__ sectors; scalar_t__ bdev; int flags; } ;
typedef scalar_t__ sector_t ;
struct TYPE_4__ {struct md_rdev rdev; } ;


 int Journal ;
 int test_bit (int ,int *) ;

__attribute__((used)) static sector_t __rdev_sectors(struct raid_set *rs)
{
 int i;

 for (i = 0; i < rs->md.raid_disks; i++) {
  struct md_rdev *rdev = &rs->dev[i].rdev;

  if (!test_bit(Journal, &rdev->flags) &&
      rdev->bdev && rdev->sectors)
   return rdev->sectors;
 }

 return 0;
}
