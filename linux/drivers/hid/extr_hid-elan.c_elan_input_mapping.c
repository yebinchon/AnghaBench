
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_usage {int dummy; } ;
struct hid_input {int dummy; } ;
struct hid_field {TYPE_1__* report; } ;
struct hid_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ id; } ;


 scalar_t__ ELAN_MT_FIRST_FINGER ;
 scalar_t__ ELAN_MT_I2C ;
 scalar_t__ ELAN_MT_SECOND_FINGER ;
 scalar_t__ ELAN_SINGLE_FINGER ;
 scalar_t__ is_not_elan_touchpad (struct hid_device*) ;

__attribute__((used)) static int elan_input_mapping(struct hid_device *hdev, struct hid_input *hi,
         struct hid_field *field, struct hid_usage *usage,
         unsigned long **bit, int *max)
{
 if (is_not_elan_touchpad(hdev))
  return 0;

 if (field->report->id == ELAN_SINGLE_FINGER ||
     field->report->id == ELAN_MT_FIRST_FINGER ||
     field->report->id == ELAN_MT_SECOND_FINGER ||
     field->report->id == ELAN_MT_I2C)
  return -1;

 return 0;
}
