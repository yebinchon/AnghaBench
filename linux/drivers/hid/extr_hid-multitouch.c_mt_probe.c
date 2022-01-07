
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mt_class {scalar_t__ name; int quirks; } ;
struct mt_device {int serial_maybe; int release_timer; int reports; int applications; int inputmode_value; struct mt_class mtclass; struct hid_device* hdev; } ;
struct hid_device_id {scalar_t__ driver_data; scalar_t__ vendor; scalar_t__ product; scalar_t__ group; } ;
struct TYPE_4__ {int kobj; } ;
struct hid_device {int name; TYPE_1__ dev; int quirks; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ HID_ANY_ID ;
 int HID_CONNECT_DEFAULT ;
 int HID_DG_CONTACTID ;
 scalar_t__ HID_GROUP_MULTITOUCH_WIN_8 ;
 int HID_LATENCY_NORMAL ;
 int HID_QUIRK_INPUT_PER_APP ;
 int HID_QUIRK_MULTI_INPUT ;
 int HID_QUIRK_NO_INPUT_SYNC ;
 int INIT_LIST_HEAD (int *) ;
 int MT_INPUTMODE_TOUCHSCREEN ;
 int MT_QUIRK_FIX_CONST_CONTACT_ID ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_warn (TYPE_1__*,char*,int ) ;
 struct mt_device* devm_kzalloc (TYPE_1__*,int,int ) ;
 int hid_hw_start (struct hid_device*,int ) ;
 int hid_parse (struct hid_device*) ;
 int hid_set_drvdata (struct hid_device*,struct mt_device*) ;
 int mt_attribute_group ;
 struct mt_class* mt_classes ;
 int mt_expired_timeout ;
 int mt_fix_const_fields (struct hid_device*,int ) ;
 int mt_set_modes (struct hid_device*,int ,int,int) ;
 int sysfs_create_group (int *,int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int mt_probe(struct hid_device *hdev, const struct hid_device_id *id)
{
 int ret, i;
 struct mt_device *td;
 const struct mt_class *mtclass = mt_classes;

 for (i = 0; mt_classes[i].name ; i++) {
  if (id->driver_data == mt_classes[i].name) {
   mtclass = &(mt_classes[i]);
   break;
  }
 }

 td = devm_kzalloc(&hdev->dev, sizeof(struct mt_device), GFP_KERNEL);
 if (!td) {
  dev_err(&hdev->dev, "cannot allocate multitouch data\n");
  return -ENOMEM;
 }
 td->hdev = hdev;
 td->mtclass = *mtclass;
 td->inputmode_value = MT_INPUTMODE_TOUCHSCREEN;
 hid_set_drvdata(hdev, td);

 INIT_LIST_HEAD(&td->applications);
 INIT_LIST_HEAD(&td->reports);

 if (id->vendor == HID_ANY_ID && id->product == HID_ANY_ID)
  td->serial_maybe = 1;




 hdev->quirks |= HID_QUIRK_NO_INPUT_SYNC;






 hdev->quirks |= HID_QUIRK_INPUT_PER_APP;

 if (id->group != HID_GROUP_MULTITOUCH_WIN_8)
  hdev->quirks |= HID_QUIRK_MULTI_INPUT;

 timer_setup(&td->release_timer, mt_expired_timeout, 0);

 ret = hid_parse(hdev);
 if (ret != 0)
  return ret;

 if (mtclass->quirks & MT_QUIRK_FIX_CONST_CONTACT_ID)
  mt_fix_const_fields(hdev, HID_DG_CONTACTID);

 ret = hid_hw_start(hdev, HID_CONNECT_DEFAULT);
 if (ret)
  return ret;

 ret = sysfs_create_group(&hdev->dev.kobj, &mt_attribute_group);
 if (ret)
  dev_warn(&hdev->dev, "Cannot allocate sysfs group for %s\n",
    hdev->name);

 mt_set_modes(hdev, HID_LATENCY_NORMAL, 1, 1);

 return 0;
}
