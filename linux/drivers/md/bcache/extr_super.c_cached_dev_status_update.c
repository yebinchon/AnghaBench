
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct cached_dev {int io_disable; scalar_t__ offline_seconds; TYPE_1__ disk; int backing_dev_name; int bdev; } ;


 scalar_t__ BACKING_DEV_OFFLINE_TIMEOUT ;
 int HZ ;
 int bcache_device_stop (TYPE_1__*) ;
 struct request_queue* bdev_get_queue (int ) ;
 scalar_t__ blk_queue_dying (struct request_queue*) ;
 int kthread_should_stop () ;
 int pr_err (char*,int ,...) ;
 int schedule_timeout_interruptible (int ) ;
 int smp_mb () ;
 int wait_for_kthread_stop () ;

__attribute__((used)) static int cached_dev_status_update(void *arg)
{
 struct cached_dev *dc = arg;
 struct request_queue *q;






 while (!kthread_should_stop() && !dc->io_disable) {
  q = bdev_get_queue(dc->bdev);
  if (blk_queue_dying(q))
   dc->offline_seconds++;
  else
   dc->offline_seconds = 0;

  if (dc->offline_seconds >= BACKING_DEV_OFFLINE_TIMEOUT) {
   pr_err("%s: device offline for %d seconds",
          dc->backing_dev_name,
          BACKING_DEV_OFFLINE_TIMEOUT);
   pr_err("%s: disable I/O request due to backing "
          "device offline", dc->disk.name);
   dc->io_disable = 1;

   smp_mb();
   bcache_device_stop(&dc->disk);
   break;
  }
  schedule_timeout_interruptible(HZ);
 }

 wait_for_kthread_stop();
 return 0;
}
