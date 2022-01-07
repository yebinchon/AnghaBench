
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct md_rdev {int kobj; TYPE_1__* bdev; int flags; } ;
struct TYPE_2__ {int bd_dev; } ;


 int AutoDetected ;
 int BDEVNAME_SIZE ;
 int bdevname (TYPE_1__*,char*) ;
 int kobject_put (int *) ;
 int md_autodetect_dev (int ) ;
 int md_rdev_clear (struct md_rdev*) ;
 int pr_debug (char*,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int unlock_rdev (struct md_rdev*) ;

__attribute__((used)) static void export_rdev(struct md_rdev *rdev)
{
 char b[BDEVNAME_SIZE];

 pr_debug("md: export_rdev(%s)\n", bdevname(rdev->bdev,b));
 md_rdev_clear(rdev);

 if (test_bit(AutoDetected, &rdev->flags))
  md_autodetect_dev(rdev->bdev->bd_dev);

 unlock_rdev(rdev);
 kobject_put(&rdev->kobj);
}
