
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lg_drv_data {struct lg4ff_device_entry* device_props; } ;
struct TYPE_2__ {struct lg4ff_device_entry** led; scalar_t__ alternate_modes; } ;
struct lg4ff_device_entry {TYPE_1__ wdata; } ;
struct led_classdev {TYPE_1__ wdata; } ;
struct hid_device {int dev; } ;


 int dbg_hid (char*) ;
 int dev_attr_alternate_modes ;
 int dev_attr_combine_pedals ;
 int dev_attr_range ;
 int dev_attr_real_id ;
 int device_remove_file (int *,int *) ;
 int hid_err (struct hid_device*,char*) ;
 struct lg_drv_data* hid_get_drvdata (struct hid_device*) ;
 int kfree (struct lg4ff_device_entry*) ;
 int led_classdev_unregister (struct lg4ff_device_entry*) ;

int lg4ff_deinit(struct hid_device *hid)
{
 struct lg4ff_device_entry *entry;
 struct lg_drv_data *drv_data;

 drv_data = hid_get_drvdata(hid);
 if (!drv_data) {
  hid_err(hid, "Error while deinitializing device, no private driver data.\n");
  return -1;
 }
 entry = drv_data->device_props;
 if (!entry)
  goto out;


 if (entry->wdata.alternate_modes) {
  device_remove_file(&hid->dev, &dev_attr_real_id);
  device_remove_file(&hid->dev, &dev_attr_alternate_modes);
 }

 device_remove_file(&hid->dev, &dev_attr_combine_pedals);
 device_remove_file(&hid->dev, &dev_attr_range);
 drv_data->device_props = ((void*)0);

 kfree(entry);
out:
 dbg_hid("Device successfully unregistered\n");
 return 0;
}
