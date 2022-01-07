
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct hid_device {scalar_t__ rsize; scalar_t__ rdesc; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef size_t ssize_t ;
typedef scalar_t__ loff_t ;


 struct device* kobj_to_dev (struct kobject*) ;
 int memcpy (char*,scalar_t__,size_t) ;
 struct hid_device* to_hid_device (struct device*) ;

__attribute__((used)) static ssize_t
read_report_descriptor(struct file *filp, struct kobject *kobj,
  struct bin_attribute *attr,
  char *buf, loff_t off, size_t count)
{
 struct device *dev = kobj_to_dev(kobj);
 struct hid_device *hdev = to_hid_device(dev);

 if (off >= hdev->rsize)
  return 0;

 if (off + count > hdev->rsize)
  count = hdev->rsize - off;

 memcpy(buf, hdev->rdesc + off, count);

 return count;
}
