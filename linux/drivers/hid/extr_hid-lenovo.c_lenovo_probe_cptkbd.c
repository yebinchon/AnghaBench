
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lenovo_drvdata_cptkbd {int fn_lock; int sensitivity; scalar_t__ middlebutton_state; } ;
struct TYPE_2__ {int kobj; } ;
struct hid_device {scalar_t__ product; scalar_t__ type; TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ HID_TYPE_USBMOUSE ;
 scalar_t__ USB_DEVICE_ID_LENOVO_CUSBKBD ;
 struct lenovo_drvdata_cptkbd* devm_kzalloc (TYPE_1__*,int,int ) ;
 int hid_dbg (struct hid_device*,char*) ;
 int hid_err (struct hid_device*,char*) ;
 int hid_set_drvdata (struct hid_device*,struct lenovo_drvdata_cptkbd*) ;
 int hid_warn (struct hid_device*,char*,int) ;
 int lenovo_attr_group_cptkbd ;
 int lenovo_features_set_cptkbd (struct hid_device*) ;
 int lenovo_send_cmd_cptkbd (struct hid_device*,int,int) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int lenovo_probe_cptkbd(struct hid_device *hdev)
{
 int ret;
 struct lenovo_drvdata_cptkbd *cptkbd_data;


 if (hdev->product == USB_DEVICE_ID_LENOVO_CUSBKBD
   && hdev->type != HID_TYPE_USBMOUSE) {
  hid_dbg(hdev, "Ignoring keyboard half of device\n");
  return 0;
 }

 cptkbd_data = devm_kzalloc(&hdev->dev,
     sizeof(*cptkbd_data),
     GFP_KERNEL);
 if (cptkbd_data == ((void*)0)) {
  hid_err(hdev, "can't alloc keyboard descriptor\n");
  return -ENOMEM;
 }
 hid_set_drvdata(hdev, cptkbd_data);





 ret = lenovo_send_cmd_cptkbd(hdev, 0x01, 0x03);
 if (ret)
  hid_warn(hdev, "Failed to switch F7/9/11 mode: %d\n", ret);


 ret = lenovo_send_cmd_cptkbd(hdev, 0x09, 0x01);
 if (ret)
  hid_warn(hdev, "Failed to switch middle button: %d\n", ret);


 cptkbd_data->middlebutton_state = 0;
 cptkbd_data->fn_lock = 1;
 cptkbd_data->sensitivity = 0x05;
 lenovo_features_set_cptkbd(hdev);

 ret = sysfs_create_group(&hdev->dev.kobj, &lenovo_attr_group_cptkbd);
 if (ret)
  hid_warn(hdev, "Could not create sysfs group: %d\n", ret);

 return 0;
}
