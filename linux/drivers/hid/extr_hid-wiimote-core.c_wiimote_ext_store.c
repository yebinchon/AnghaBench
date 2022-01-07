
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int PAGE_SIZE ;
 struct wiimote_data* dev_to_wii (struct device*) ;
 int strcmp (char const*,char*) ;
 int strnlen (char const*,int ) ;
 int wiimote_schedule (struct wiimote_data*) ;

__attribute__((used)) static ssize_t wiimote_ext_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct wiimote_data *wdata = dev_to_wii(dev);

 if (!strcmp(buf, "scan")) {
  wiimote_schedule(wdata);
 } else {
  return -EINVAL;
 }

 return strnlen(buf, PAGE_SIZE);
}
