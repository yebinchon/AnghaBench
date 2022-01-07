
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_rdev {int kobj; int flags; int badblocks; scalar_t__ data_offset; scalar_t__ new_data_offset; } ;
typedef int sector_t ;


 int ExternalBbl ;
 int badblocks_clear (int *,int ,int) ;
 int sysfs_notify (int *,int *,char*) ;
 scalar_t__ test_bit (int ,int *) ;

int rdev_clear_badblocks(struct md_rdev *rdev, sector_t s, int sectors,
    int is_new)
{
 int rv;
 if (is_new)
  s += rdev->new_data_offset;
 else
  s += rdev->data_offset;
 rv = badblocks_clear(&rdev->badblocks, s, sectors);
 if ((rv == 0) && test_bit(ExternalBbl, &rdev->flags))
  sysfs_notify(&rdev->kobj, ((void*)0), "bad_blocks");
 return rv;
}
