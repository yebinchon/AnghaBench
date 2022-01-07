
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sd; } ;
struct mddev {TYPE_1__ kobj; } ;
struct md_rdev {int raid_disk; int flags; } ;


 int Journal ;
 int Replacement ;
 int sprintf (char*,char*,int) ;
 int sysfs_remove_link (TYPE_1__*,char*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline void sysfs_unlink_rdev(struct mddev *mddev, struct md_rdev *rdev)
{
 char nm[20];
 if (!test_bit(Replacement, &rdev->flags) &&
     !test_bit(Journal, &rdev->flags) &&
     mddev->kobj.sd) {
  sprintf(nm, "rd%d", rdev->raid_disk);
  sysfs_remove_link(&mddev->kobj, nm);
 }
}
