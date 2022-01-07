
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; } ;
struct md_rdev {int del_work; int kobj; TYPE_1__ badblocks; int * sysfs_state; TYPE_2__* mddev; int bdev; int same_set; } ;
struct TYPE_4__ {int gendisk; } ;


 int BDEVNAME_SIZE ;
 int INIT_WORK (int *,int ) ;
 int bd_unlink_disk_holder (int ,int ) ;
 int bdevname (int ,char*) ;
 int kobject_get (int *) ;
 int list_del_rcu (int *) ;
 int md_delayed_delete ;
 int md_misc_wq ;
 int mddev_destroy_wb_pool (TYPE_2__*,struct md_rdev*) ;
 int pr_debug (char*,int ) ;
 int queue_work (int ,int *) ;
 int synchronize_rcu () ;
 int sysfs_put (int *) ;
 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static void unbind_rdev_from_array(struct md_rdev *rdev)
{
 char b[BDEVNAME_SIZE];

 bd_unlink_disk_holder(rdev->bdev, rdev->mddev->gendisk);
 list_del_rcu(&rdev->same_set);
 pr_debug("md: unbind<%s>\n", bdevname(rdev->bdev,b));
 mddev_destroy_wb_pool(rdev->mddev, rdev);
 rdev->mddev = ((void*)0);
 sysfs_remove_link(&rdev->kobj, "block");
 sysfs_put(rdev->sysfs_state);
 rdev->sysfs_state = ((void*)0);
 rdev->badblocks.count = 0;




 synchronize_rcu();
 INIT_WORK(&rdev->del_work, md_delayed_delete);
 kobject_get(&rdev->kobj);
 queue_work(md_misc_wq, &rdev->del_work);
}
