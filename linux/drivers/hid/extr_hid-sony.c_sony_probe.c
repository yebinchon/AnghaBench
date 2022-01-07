
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sony_sc {unsigned long quirks; struct hid_device* hdev; int lock; } ;
struct hid_device_id {unsigned long driver_data; } ;
struct hid_device {int version; int claimed; int dev; int name; } ;


 int DUALSHOCK4_CONTROLLER ;
 int ENODEV ;
 int ENOMEM ;
 unsigned long FUTUREMAX_DANCE_MAT ;
 int GFP_KERNEL ;
 int HID_CLAIMED_INPUT ;
 unsigned int HID_CONNECT_DEFAULT ;
 unsigned int HID_CONNECT_HIDDEV_FORCE ;
 unsigned long SHANWAN_GAMEPAD ;
 int SIXAXIS_CONTROLLER ;
 int VAIO_RDESC_CONSTANT ;
 struct sony_sc* devm_kzalloc (int *,int,int ) ;
 int hid_err (struct hid_device*,char*) ;
 int hid_hw_start (struct hid_device*,unsigned int) ;
 int hid_hw_stop (struct hid_device*) ;
 int hid_parse (struct hid_device*) ;
 int hid_set_drvdata (struct hid_device*,struct sony_sc*) ;
 int spin_lock_init (int *) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int sony_probe(struct hid_device *hdev, const struct hid_device_id *id)
{
 int ret;
 unsigned long quirks = id->driver_data;
 struct sony_sc *sc;
 unsigned int connect_mask = HID_CONNECT_DEFAULT;

 if (!strcmp(hdev->name, "FutureMax Dance Mat"))
  quirks |= FUTUREMAX_DANCE_MAT;

 if (!strcmp(hdev->name, "SHANWAN PS3 GamePad"))
  quirks |= SHANWAN_GAMEPAD;

 sc = devm_kzalloc(&hdev->dev, sizeof(*sc), GFP_KERNEL);
 if (sc == ((void*)0)) {
  hid_err(hdev, "can't alloc sony descriptor\n");
  return -ENOMEM;
 }

 spin_lock_init(&sc->lock);

 sc->quirks = quirks;
 hid_set_drvdata(hdev, sc);
 sc->hdev = hdev;

 ret = hid_parse(hdev);
 if (ret) {
  hid_err(hdev, "parse failed\n");
  return ret;
 }

 if (sc->quirks & VAIO_RDESC_CONSTANT)
  connect_mask |= HID_CONNECT_HIDDEV_FORCE;
 else if (sc->quirks & SIXAXIS_CONTROLLER)
  connect_mask |= HID_CONNECT_HIDDEV_FORCE;







 if (sc->quirks & (SIXAXIS_CONTROLLER | DUALSHOCK4_CONTROLLER))
  hdev->version |= 0x8000;

 ret = hid_hw_start(hdev, connect_mask);
 if (ret) {
  hid_err(hdev, "hw start failed\n");
  return ret;
 }
 if (!(hdev->claimed & HID_CLAIMED_INPUT)) {
  hid_err(hdev, "failed to claim input\n");
  hid_hw_stop(hdev);
  return -ENODEV;
 }

 return ret;
}
