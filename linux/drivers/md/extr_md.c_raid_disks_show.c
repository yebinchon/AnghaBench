
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ raid_disks; scalar_t__ reshape_position; scalar_t__ delta_disks; } ;
typedef int ssize_t ;


 scalar_t__ MaxSector ;
 int sprintf (char*,char*,int,...) ;

__attribute__((used)) static ssize_t
raid_disks_show(struct mddev *mddev, char *page)
{
 if (mddev->raid_disks == 0)
  return 0;
 if (mddev->reshape_position != MaxSector &&
     mddev->delta_disks != 0)
  return sprintf(page, "%d (%d)\n", mddev->raid_disks,
          mddev->raid_disks - mddev->delta_disks);
 return sprintf(page, "%d\n", mddev->raid_disks);
}
