
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r5conf {unsigned long skip_copy; } ;
struct mddev {TYPE_2__* queue; struct r5conf* private; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* backing_dev_info; } ;
struct TYPE_3__ {int capabilities; } ;


 int BDI_CAP_STABLE_WRITES ;
 int EINVAL ;
 int ENODEV ;
 size_t PAGE_SIZE ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mddev_lock (struct mddev*) ;
 int mddev_resume (struct mddev*) ;
 int mddev_suspend (struct mddev*) ;
 int mddev_unlock (struct mddev*) ;

__attribute__((used)) static ssize_t
raid5_store_skip_copy(struct mddev *mddev, const char *page, size_t len)
{
 struct r5conf *conf;
 unsigned long new;
 int err;

 if (len >= PAGE_SIZE)
  return -EINVAL;
 if (kstrtoul(page, 10, &new))
  return -EINVAL;
 new = !!new;

 err = mddev_lock(mddev);
 if (err)
  return err;
 conf = mddev->private;
 if (!conf)
  err = -ENODEV;
 else if (new != conf->skip_copy) {
  mddev_suspend(mddev);
  conf->skip_copy = new;
  if (new)
   mddev->queue->backing_dev_info->capabilities |=
    BDI_CAP_STABLE_WRITES;
  else
   mddev->queue->backing_dev_info->capabilities &=
    ~BDI_CAP_STABLE_WRITES;
  mddev_resume(mddev);
 }
 mddev_unlock(mddev);
 return err ?: len;
}
