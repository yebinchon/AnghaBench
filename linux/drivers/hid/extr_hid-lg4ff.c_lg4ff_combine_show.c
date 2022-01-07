
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lg_drv_data {struct lg4ff_device_entry* device_props; } ;
struct TYPE_2__ {int combine; } ;
struct lg4ff_device_entry {TYPE_1__ wdata; } ;
struct hid_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int PAGE_SIZE ;
 int hid_err (struct hid_device*,char*) ;
 struct lg_drv_data* hid_get_drvdata (struct hid_device*) ;
 size_t scnprintf (char*,int ,char*,int ) ;
 struct hid_device* to_hid_device (struct device*) ;

__attribute__((used)) static ssize_t lg4ff_combine_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct hid_device *hid = to_hid_device(dev);
 struct lg4ff_device_entry *entry;
 struct lg_drv_data *drv_data;
 size_t count;

 drv_data = hid_get_drvdata(hid);
 if (!drv_data) {
  hid_err(hid, "Private driver data not found!\n");
  return 0;
 }

 entry = drv_data->device_props;
 if (!entry) {
  hid_err(hid, "Device properties not found!\n");
  return 0;
 }

 count = scnprintf(buf, PAGE_SIZE, "%u\n", entry->wdata.combine);
 return count;
}
