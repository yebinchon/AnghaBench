
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_device {char* driver_override; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int device_lock (struct device*) ;
 struct hv_device* device_to_hv_device (struct device*) ;
 int device_unlock (struct device*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t driver_override_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct hv_device *hv_dev = device_to_hv_device(dev);
 ssize_t len;

 device_lock(dev);
 len = snprintf(buf, PAGE_SIZE, "%s\n", hv_dev->driver_override);
 device_unlock(dev);

 return len;
}
