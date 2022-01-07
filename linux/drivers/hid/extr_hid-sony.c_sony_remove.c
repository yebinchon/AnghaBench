
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sony_sc {int quirks; TYPE_1__* hdev; scalar_t__ hw_version; scalar_t__ fw_version; } ;
struct hid_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int DUALSHOCK4_CONTROLLER_BT ;
 int dev_attr_bt_poll_interval ;
 int dev_attr_firmware_version ;
 int dev_attr_hardware_version ;
 int device_remove_file (int *,int *) ;
 struct sony_sc* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_close (struct hid_device*) ;
 int hid_hw_stop (struct hid_device*) ;
 int sony_cancel_work_sync (struct sony_sc*) ;
 int sony_release_device_id (struct sony_sc*) ;
 int sony_remove_dev_list (struct sony_sc*) ;

__attribute__((used)) static void sony_remove(struct hid_device *hdev)
{
 struct sony_sc *sc = hid_get_drvdata(hdev);

 hid_hw_close(hdev);

 if (sc->quirks & DUALSHOCK4_CONTROLLER_BT)
  device_remove_file(&sc->hdev->dev, &dev_attr_bt_poll_interval);

 if (sc->fw_version)
  device_remove_file(&sc->hdev->dev, &dev_attr_firmware_version);

 if (sc->hw_version)
  device_remove_file(&sc->hdev->dev, &dev_attr_hardware_version);

 sony_cancel_work_sync(sc);

 sony_remove_dev_list(sc);

 sony_release_device_id(sc);

 hid_hw_stop(hdev);
}
