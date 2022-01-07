
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct lg_drv_data {struct lg4ff_device_entry* device_props; } ;
struct TYPE_2__ {int combine; } ;
struct lg4ff_device_entry {TYPE_1__ wdata; } ;
struct hid_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int hid_err (struct hid_device*,char*) ;
 struct lg_drv_data* hid_get_drvdata (struct hid_device*) ;
 int simple_strtoul (char const*,int *,int) ;
 struct hid_device* to_hid_device (struct device*) ;

__attribute__((used)) static ssize_t lg4ff_combine_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct hid_device *hid = to_hid_device(dev);
 struct lg4ff_device_entry *entry;
 struct lg_drv_data *drv_data;
 u16 combine = simple_strtoul(buf, ((void*)0), 10);

 drv_data = hid_get_drvdata(hid);
 if (!drv_data) {
  hid_err(hid, "Private driver data not found!\n");
  return -EINVAL;
 }

 entry = drv_data->device_props;
 if (!entry) {
  hid_err(hid, "Device properties not found!\n");
  return -EINVAL;
 }

 if (combine > 1)
  combine = 1;

 entry->wdata.combine = combine;
 return count;
}
