
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int raid_disks; struct linear_conf* private; } ;
struct linear_conf {struct dev_info* disks; } ;
struct dev_info {scalar_t__ end_sector; } ;
typedef scalar_t__ sector_t ;



__attribute__((used)) static inline struct dev_info *which_dev(struct mddev *mddev, sector_t sector)
{
 int lo, mid, hi;
 struct linear_conf *conf;

 lo = 0;
 hi = mddev->raid_disks - 1;
 conf = mddev->private;





 while (hi > lo) {

  mid = (hi + lo) / 2;
  if (sector < conf->disks[mid].end_sector)
   hi = mid;
  else
   lo = mid + 1;
 }

 return conf->disks + lo;
}
