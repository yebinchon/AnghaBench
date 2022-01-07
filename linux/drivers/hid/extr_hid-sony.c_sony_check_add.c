
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sony_sc {int quirks; TYPE_1__* hdev; int * mac_address; } ;
struct TYPE_4__ {int uniq; } ;


 int DS4_FEATURE_REPORT_0x81_SIZE ;
 int DUALSHOCK4_CONTROLLER_BT ;
 int DUALSHOCK4_CONTROLLER_USB ;
 int DUALSHOCK4_DONGLE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_FEATURE_REPORT ;
 int HID_REQ_GET_REPORT ;
 int MOTION_CONTROLLER_BT ;
 int NAVIGATION_CONTROLLER_BT ;
 int NAVIGATION_CONTROLLER_USB ;
 int SIXAXIS_CONTROLLER_BT ;
 int SIXAXIS_CONTROLLER_USB ;
 int SIXAXIS_REPORT_0xF2_SIZE ;
 int hid_err (TYPE_1__*,char*) ;
 int hid_hw_raw_request (TYPE_1__*,int,int *,int,int ,int ) ;
 int hid_warn (TYPE_1__*,char*) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int snprintf (int ,int,char*,int *) ;
 int sony_check_add_dev_list (struct sony_sc*) ;
 scalar_t__ sony_get_bt_devaddr (struct sony_sc*) ;

__attribute__((used)) static int sony_check_add(struct sony_sc *sc)
{
 u8 *buf = ((void*)0);
 int n, ret;

 if ((sc->quirks & DUALSHOCK4_CONTROLLER_BT) ||
     (sc->quirks & MOTION_CONTROLLER_BT) ||
     (sc->quirks & NAVIGATION_CONTROLLER_BT) ||
     (sc->quirks & SIXAXIS_CONTROLLER_BT)) {






  if (sony_get_bt_devaddr(sc) < 0) {
   hid_warn(sc->hdev, "UNIQ does not contain a MAC address; duplicate check skipped\n");
   return 0;
  }
 } else if (sc->quirks & (DUALSHOCK4_CONTROLLER_USB | DUALSHOCK4_DONGLE)) {
  buf = kmalloc(DS4_FEATURE_REPORT_0x81_SIZE, GFP_KERNEL);
  if (!buf)
   return -ENOMEM;






  ret = hid_hw_raw_request(sc->hdev, 0x81, buf,
    DS4_FEATURE_REPORT_0x81_SIZE, HID_FEATURE_REPORT,
    HID_REQ_GET_REPORT);

  if (ret != DS4_FEATURE_REPORT_0x81_SIZE) {
   hid_err(sc->hdev, "failed to retrieve feature report 0x81 with the DualShock 4 MAC address\n");
   ret = ret < 0 ? ret : -EINVAL;
   goto out_free;
  }

  memcpy(sc->mac_address, &buf[1], sizeof(sc->mac_address));

  snprintf(sc->hdev->uniq, sizeof(sc->hdev->uniq),
    "%pMR", sc->mac_address);
 } else if ((sc->quirks & SIXAXIS_CONTROLLER_USB) ||
   (sc->quirks & NAVIGATION_CONTROLLER_USB)) {
  buf = kmalloc(SIXAXIS_REPORT_0xF2_SIZE, GFP_KERNEL);
  if (!buf)
   return -ENOMEM;






  ret = hid_hw_raw_request(sc->hdev, 0xf2, buf,
    SIXAXIS_REPORT_0xF2_SIZE, HID_FEATURE_REPORT,
    HID_REQ_GET_REPORT);

  if (ret != SIXAXIS_REPORT_0xF2_SIZE) {
   hid_err(sc->hdev, "failed to retrieve feature report 0xf2 with the Sixaxis MAC address\n");
   ret = ret < 0 ? ret : -EINVAL;
   goto out_free;
  }





  for (n = 0; n < 6; n++)
   sc->mac_address[5-n] = buf[4+n];

  snprintf(sc->hdev->uniq, sizeof(sc->hdev->uniq),
    "%pMR", sc->mac_address);
 } else {
  return 0;
 }

 ret = sony_check_add_dev_list(sc);

out_free:

 kfree(buf);

 return ret;
}
