
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct closure {int dummy; } ;
struct bcache_device {int kobj; int disk; int c; } ;
struct TYPE_5__ {char* uuid; int label; } ;
struct cached_dev {int status_update_thread; struct bcache_device disk; int bdev; TYPE_2__ sb; int backing_dev_name; int running; scalar_t__ io_disable; } ;
struct TYPE_4__ {int kobj; } ;


 scalar_t__ BDEV_STATE (TYPE_2__*) ;
 scalar_t__ BDEV_STATE_NONE ;
 int BDEV_STATE_STALE ;
 int EBUSY ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int KOBJ_CHANGE ;
 int SB_LABEL_SIZE ;
 int SET_BDEV_STATE (TYPE_2__*,int ) ;
 int add_disk (int ) ;
 scalar_t__ atomic_xchg (int *,int) ;
 int bch_write_bdev_super (struct cached_dev*,struct closure*) ;
 int bd_link_disk_holder (int ,int ) ;
 int cached_dev_status_update ;
 int closure_init_stack (struct closure*) ;
 int closure_sync (struct closure*) ;
 TYPE_1__* disk_to_dev (int ) ;
 char* kasprintf (int ,char*,char*) ;
 int kfree (char*) ;
 char* kmemdup_nul (int ,int ,int ) ;
 int kobject_uevent_env (int *,int ,char**) ;
 int kthread_run (int ,struct cached_dev*,char*) ;
 int pr_err (char*,...) ;
 int pr_info (char*,int ) ;
 int pr_warn (char*) ;
 scalar_t__ sysfs_create_link (int *,int *,char*) ;

int bch_cached_dev_run(struct cached_dev *dc)
{
 struct bcache_device *d = &dc->disk;
 char *buf = kmemdup_nul(dc->sb.label, SB_LABEL_SIZE, GFP_KERNEL);
 char *env[] = {
  "DRIVER=bcache",
  kasprintf(GFP_KERNEL, "CACHED_UUID=%pU", dc->sb.uuid),
  kasprintf(GFP_KERNEL, "CACHED_LABEL=%s", buf ? : ""),
  ((void*)0),
 };

 if (dc->io_disable) {
  pr_err("I/O disabled on cached dev %s",
         dc->backing_dev_name);
  kfree(env[1]);
  kfree(env[2]);
  kfree(buf);
  return -EIO;
 }

 if (atomic_xchg(&dc->running, 1)) {
  kfree(env[1]);
  kfree(env[2]);
  kfree(buf);
  pr_info("cached dev %s is running already",
         dc->backing_dev_name);
  return -EBUSY;
 }

 if (!d->c &&
     BDEV_STATE(&dc->sb) != BDEV_STATE_NONE) {
  struct closure cl;

  closure_init_stack(&cl);

  SET_BDEV_STATE(&dc->sb, BDEV_STATE_STALE);
  bch_write_bdev_super(dc, &cl);
  closure_sync(&cl);
 }

 add_disk(d->disk);
 bd_link_disk_holder(dc->bdev, dc->disk.disk);




 kobject_uevent_env(&disk_to_dev(d->disk)->kobj, KOBJ_CHANGE, env);
 kfree(env[1]);
 kfree(env[2]);
 kfree(buf);

 if (sysfs_create_link(&d->kobj, &disk_to_dev(d->disk)->kobj, "dev") ||
     sysfs_create_link(&disk_to_dev(d->disk)->kobj,
         &d->kobj, "bcache")) {
  pr_err("Couldn't create bcache dev <-> disk sysfs symlinks");
  return -ENOMEM;
 }

 dc->status_update_thread = kthread_run(cached_dev_status_update,
            dc, "bcache_status_update");
 if (IS_ERR(dc->status_update_thread)) {
  pr_warn("failed to create bcache_status_update kthread, "
   "continue to run without monitoring backing "
   "device status");
 }

 return 0;
}
