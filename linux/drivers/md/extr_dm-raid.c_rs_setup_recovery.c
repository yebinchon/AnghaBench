
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid_set {int dummy; } ;
typedef scalar_t__ sector_t ;


 scalar_t__ MaxSector ;
 scalar_t__ __rdev_sectors (struct raid_set*) ;
 int __rs_setup_recovery (struct raid_set*,scalar_t__) ;

__attribute__((used)) static void rs_setup_recovery(struct raid_set *rs, sector_t dev_sectors)
{
 if (!dev_sectors)

  __rs_setup_recovery(rs, 0);
 else if (dev_sectors == MaxSector)

  __rs_setup_recovery(rs, MaxSector);
 else if (__rdev_sectors(rs) < dev_sectors)

  __rs_setup_recovery(rs, __rdev_sectors(rs));
 else
  __rs_setup_recovery(rs, MaxSector);
}
