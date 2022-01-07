
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int keycodesize; int keycodemax; int* evbit; int keybit; int * keycode; } ;
struct hid_input {struct input_dev* input; } ;
struct hid_device {int dummy; } ;
struct appleir {int * keymap; struct input_dev* input_dev; } ;


 int ARRAY_SIZE (int *) ;
 int BIT (int ) ;
 int EV_KEY ;
 int EV_REP ;
 int KEY_RESERVED ;
 int * appleir_key_table ;
 int clear_bit (int ,int ) ;
 struct appleir* hid_get_drvdata (struct hid_device*) ;
 int memcpy (int *,int *,int) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int appleir_input_configured(struct hid_device *hid,
  struct hid_input *hidinput)
{
 struct input_dev *input_dev = hidinput->input;
 struct appleir *appleir = hid_get_drvdata(hid);
 int i;

 appleir->input_dev = input_dev;

 input_dev->keycode = appleir->keymap;
 input_dev->keycodesize = sizeof(unsigned short);
 input_dev->keycodemax = ARRAY_SIZE(appleir->keymap);

 input_dev->evbit[0] = BIT(EV_KEY) | BIT(EV_REP);

 memcpy(appleir->keymap, appleir_key_table, sizeof(appleir->keymap));
 for (i = 0; i < ARRAY_SIZE(appleir_key_table); i++)
  set_bit(appleir->keymap[i], input_dev->keybit);
 clear_bit(KEY_RESERVED, input_dev->keybit);

 return 0;
}
