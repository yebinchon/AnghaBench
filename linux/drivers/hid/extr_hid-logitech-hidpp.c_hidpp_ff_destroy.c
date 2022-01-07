
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hidpp_ff_private_data {int effect_ids; int wq; TYPE_1__* hidpp; } ;
struct hid_device {int dev; } ;
struct ff_device {struct hidpp_ff_private_data* private; } ;
struct TYPE_2__ {struct hid_device* hid_dev; } ;


 int destroy_workqueue (int ) ;
 int dev_attr_range ;
 int device_remove_file (int *,int *) ;
 int hid_info (struct hid_device*,char*) ;
 int kfree (int ) ;

__attribute__((used)) static void hidpp_ff_destroy(struct ff_device *ff)
{
 struct hidpp_ff_private_data *data = ff->private;
 struct hid_device *hid = data->hidpp->hid_dev;

 hid_info(hid, "Unloading HID++ force feedback.\n");

 device_remove_file(&hid->dev, &dev_attr_range);
 destroy_workqueue(data->wq);
 kfree(data->effect_ids);
}
