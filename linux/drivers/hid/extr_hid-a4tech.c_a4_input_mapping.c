
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {scalar_t__ hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;
struct a4tech_sc {int quirks; } ;


 int A4_2WHEEL_MOUSE_HACK_B8 ;
 scalar_t__ A4_WHEEL_ORIENTATION ;
 struct a4tech_sc* hid_get_drvdata (struct hid_device*) ;

__attribute__((used)) static int a4_input_mapping(struct hid_device *hdev, struct hid_input *hi,
       struct hid_field *field, struct hid_usage *usage,
       unsigned long **bit, int *max)
{
 struct a4tech_sc *a4 = hid_get_drvdata(hdev);

 if (a4->quirks & A4_2WHEEL_MOUSE_HACK_B8 &&
     usage->hid == A4_WHEEL_ORIENTATION) {







  return -1;
 }

 return 0;

}
