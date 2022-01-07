
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kone_settings {int dummy; } ;
struct kone_device {int kone_lock; int settings; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct TYPE_3__ {struct device* parent; } ;


 int dev_get_drvdata (struct device*) ;
 struct kone_device* hid_get_drvdata (int ) ;
 TYPE_2__* kobj_to_dev (struct kobject*) ;
 int memcpy (char*,char const*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t kone_sysfs_read_settings(struct file *fp, struct kobject *kobj,
  struct bin_attribute *attr, char *buf,
  loff_t off, size_t count) {
 struct device *dev = kobj_to_dev(kobj)->parent->parent;
 struct kone_device *kone = hid_get_drvdata(dev_get_drvdata(dev));

 if (off >= sizeof(struct kone_settings))
  return 0;

 if (off + count > sizeof(struct kone_settings))
  count = sizeof(struct kone_settings) - off;

 mutex_lock(&kone->kone_lock);
 memcpy(buf, ((char const *)&kone->settings) + off, count);
 mutex_unlock(&kone->kone_lock);

 return count;
}
