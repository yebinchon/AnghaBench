
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int product; } ;
typedef int __s32 ;




 int lenovo_event_cptkbd (struct hid_device*,struct hid_field*,struct hid_usage*,int ) ;

__attribute__((used)) static int lenovo_event(struct hid_device *hdev, struct hid_field *field,
  struct hid_usage *usage, __s32 value)
{
 switch (hdev->product) {
 case 128:
 case 129:
  return lenovo_event_cptkbd(hdev, field, usage, value);
 default:
  return 0;
 }
}
