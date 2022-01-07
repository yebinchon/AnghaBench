
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {int changed; int flags; int kobj; int sysfs_action; int sysfs_state; int gendisk; int array_sectors; int sync_thread; int thread; } ;
struct TYPE_2__ {int kobj; } ;


 int KOBJ_CHANGE ;
 int MD_NOT_READY ;
 int clear_bit (int ,int *) ;
 TYPE_1__* disk_to_dev (int ) ;
 int kobject_uevent (int *,int ) ;
 int md_allow_write (struct mddev*) ;
 int md_bitmap_destroy (struct mddev*) ;
 int md_bitmap_load (struct mddev*) ;
 int md_run (struct mddev*) ;
 int md_start (struct mddev*) ;
 int md_wakeup_thread (int ) ;
 scalar_t__ mddev_is_clustered (struct mddev*) ;
 int revalidate_disk (int ) ;
 int set_bit (int ,int *) ;
 int set_capacity (int ,int ) ;
 int sysfs_notify (int *,int *,char*) ;
 int sysfs_notify_dirent_safe (int ) ;

__attribute__((used)) static int do_md_run(struct mddev *mddev)
{
 int err;

 set_bit(MD_NOT_READY, &mddev->flags);
 err = md_run(mddev);
 if (err)
  goto out;
 err = md_bitmap_load(mddev);
 if (err) {
  md_bitmap_destroy(mddev);
  goto out;
 }

 if (mddev_is_clustered(mddev))
  md_allow_write(mddev);


 md_start(mddev);

 md_wakeup_thread(mddev->thread);
 md_wakeup_thread(mddev->sync_thread);

 set_capacity(mddev->gendisk, mddev->array_sectors);
 revalidate_disk(mddev->gendisk);
 clear_bit(MD_NOT_READY, &mddev->flags);
 mddev->changed = 1;
 kobject_uevent(&disk_to_dev(mddev->gendisk)->kobj, KOBJ_CHANGE);
 sysfs_notify_dirent_safe(mddev->sysfs_state);
 sysfs_notify_dirent_safe(mddev->sysfs_action);
 sysfs_notify(&mddev->kobj, ((void*)0), "degraded");
out:
 clear_bit(MD_NOT_READY, &mddev->flags);
 return err;
}
