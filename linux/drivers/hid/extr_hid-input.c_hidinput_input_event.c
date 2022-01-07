
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int led_work; } ;


 unsigned int EV_FF ;
 unsigned int EV_LED ;
 int hid_set_field (struct hid_field*,int,int) ;
 int hid_warn (struct input_dev*,char*) ;
 int hidinput_find_field (struct hid_device*,unsigned int,unsigned int,struct hid_field**) ;
 int input_ff_event (struct input_dev*,unsigned int,unsigned int,int) ;
 struct hid_device* input_get_drvdata (struct input_dev*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int hidinput_input_event(struct input_dev *dev, unsigned int type,
    unsigned int code, int value)
{
 struct hid_device *hid = input_get_drvdata(dev);
 struct hid_field *field;
 int offset;

 if (type == EV_FF)
  return input_ff_event(dev, type, code, value);

 if (type != EV_LED)
  return -1;

 if ((offset = hidinput_find_field(hid, type, code, &field)) == -1) {
  hid_warn(dev, "event field not found\n");
  return -1;
 }

 hid_set_field(field, offset, value);

 schedule_work(&hid->led_work);
 return 0;
}
