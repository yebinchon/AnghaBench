
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {struct input_absinfo* absinfo; } ;
struct input_absinfo {int maximum; int minimum; } ;
struct hid_usage {size_t code; } ;



__attribute__((used)) static int wacom_offset_rotation(struct input_dev *input, struct hid_usage *usage,
     int value, int num, int denom)
{
 struct input_absinfo *abs = &input->absinfo[usage->code];
 int range = (abs->maximum - abs->minimum + 1);

 value += num*range/denom;
 if (value > abs->maximum)
  value -= range;
 else if (value < abs->minimum)
  value += range;
 return value;
}
