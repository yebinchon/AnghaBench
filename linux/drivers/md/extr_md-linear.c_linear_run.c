
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {struct linear_conf* private; int raid_disks; } ;
struct linear_conf {int dummy; } ;


 int EINVAL ;
 int kfree (struct linear_conf*) ;
 struct linear_conf* linear_conf (struct mddev*,int ) ;
 int linear_size (struct mddev*,int ,int ) ;
 scalar_t__ md_check_no_bitmap (struct mddev*) ;
 int md_integrity_register (struct mddev*) ;
 int md_set_array_sectors (struct mddev*,int ) ;

__attribute__((used)) static int linear_run (struct mddev *mddev)
{
 struct linear_conf *conf;
 int ret;

 if (md_check_no_bitmap(mddev))
  return -EINVAL;
 conf = linear_conf(mddev, mddev->raid_disks);

 if (!conf)
  return 1;
 mddev->private = conf;
 md_set_array_sectors(mddev, linear_size(mddev, 0, 0));

 ret = md_integrity_register(mddev);
 if (ret) {
  kfree(conf);
  mddev->private = ((void*)0);
 }
 return ret;
}
