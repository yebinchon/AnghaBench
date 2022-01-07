
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int keycodesize; int keycodemax; int* evbit; int keybit; int * keycode; } ;
struct hid_input {struct input_dev* input; } ;
struct hid_device {int dummy; } ;
struct creative_sb0540 {int * keymap; struct input_dev* input_dev; } ;


 int ARRAY_SIZE (int *) ;
 int BIT (int ) ;
 int EV_KEY ;
 int EV_REP ;
 int KEY_RESERVED ;
 int clear_bit (int ,int ) ;
 int * creative_sb0540_key_table ;
 struct creative_sb0540* hid_get_drvdata (struct hid_device*) ;
 int memcpy (int *,int *,int) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int creative_sb0540_input_configured(struct hid_device *hid,
  struct hid_input *hidinput)
{
 struct input_dev *input_dev = hidinput->input;
 struct creative_sb0540 *creative_sb0540 = hid_get_drvdata(hid);
 int i;

 creative_sb0540->input_dev = input_dev;

 input_dev->keycode = creative_sb0540->keymap;
 input_dev->keycodesize = sizeof(unsigned short);
 input_dev->keycodemax = ARRAY_SIZE(creative_sb0540->keymap);

 input_dev->evbit[0] = BIT(EV_KEY) | BIT(EV_REP);

 memcpy(creative_sb0540->keymap, creative_sb0540_key_table,
  sizeof(creative_sb0540->keymap));
 for (i = 0; i < ARRAY_SIZE(creative_sb0540_key_table); i++)
  set_bit(creative_sb0540->keymap[i], input_dev->keybit);
 clear_bit(KEY_RESERVED, input_dev->keybit);

 return 0;
}
