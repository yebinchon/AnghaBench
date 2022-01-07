
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int * evbit; } ;
struct hid_input {struct input_dev* input; } ;
struct hid_device {int dummy; } ;
struct cmhid {struct input_dev* input_dev; int switch_map; } ;


 int BIT (int ) ;
 int CM6533_JD_TYPE_COUNT ;
 int EV_SW ;
 struct cmhid* hid_get_drvdata (struct hid_device*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int * jack_switch_types ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static int cmhid_input_configured(struct hid_device *hid,
  struct hid_input *hidinput)
{
 struct input_dev *input_dev = hidinput->input;
 struct cmhid *cm = hid_get_drvdata(hid);
 int i;

 cm->input_dev = input_dev;
 memcpy(cm->switch_map, jack_switch_types, sizeof(cm->switch_map));
 input_dev->evbit[0] = BIT(EV_SW);
 for (i = 0; i < CM6533_JD_TYPE_COUNT; i++)
  input_set_capability(cm->input_dev,
    EV_SW, jack_switch_types[i]);
 return 0;
}
