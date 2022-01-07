
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hid_usage {int hid; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;
struct corsair_drvdata {TYPE_2__* k90; } ;
typedef int __s32 ;
struct TYPE_3__ {int brightness; } ;
struct TYPE_4__ {TYPE_1__ record_led; } ;




 int HID_USAGE ;
 struct corsair_drvdata* hid_get_drvdata (struct hid_device*) ;

__attribute__((used)) static int corsair_event(struct hid_device *dev, struct hid_field *field,
    struct hid_usage *usage, __s32 value)
{
 struct corsair_drvdata *drvdata = hid_get_drvdata(dev);

 if (!drvdata->k90)
  return 0;

 switch (usage->hid & HID_USAGE) {
 case 129:
  drvdata->k90->record_led.brightness = 1;
  break;
 case 128:
  drvdata->k90->record_led.brightness = 0;
  break;
 default:
  break;
 }

 return 0;
}
