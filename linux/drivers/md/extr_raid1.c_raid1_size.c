
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ dev_sectors; } ;
typedef scalar_t__ sector_t ;



__attribute__((used)) static sector_t raid1_size(struct mddev *mddev, sector_t sectors, int raid_disks)
{
 if (sectors)
  return sectors;

 return mddev->dev_sectors;
}
