
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_keymap_entry {unsigned int keycode; } ;
struct input_dev {int keybit; } ;
struct hid_usage {scalar_t__ type; unsigned int code; int hid; } ;
struct hid_device {int dummy; } ;


 int EINVAL ;
 scalar_t__ EV_KEY ;
 unsigned int KEY_RESERVED ;
 int clear_bit (unsigned int,int ) ;
 int dbg_hid (char*,unsigned int,int ) ;
 scalar_t__ hidinput_find_key (struct hid_device*,int ,unsigned int,int *) ;
 struct hid_usage* hidinput_locate_usage (struct hid_device*,struct input_keymap_entry const*,int *) ;
 struct hid_device* input_get_drvdata (struct input_dev*) ;
 int match_keycode ;
 int set_bit (unsigned int,int ) ;

__attribute__((used)) static int hidinput_setkeycode(struct input_dev *dev,
          const struct input_keymap_entry *ke,
          unsigned int *old_keycode)
{
 struct hid_device *hid = input_get_drvdata(dev);
 struct hid_usage *usage;

 usage = hidinput_locate_usage(hid, ke, ((void*)0));
 if (usage) {
  *old_keycode = usage->type == EV_KEY ?
    usage->code : KEY_RESERVED;
  usage->code = ke->keycode;

  clear_bit(*old_keycode, dev->keybit);
  set_bit(usage->code, dev->keybit);
  dbg_hid("Assigned keycode %d to HID usage code %x\n",
   usage->code, usage->hid);





  if (hidinput_find_key(hid, match_keycode, *old_keycode, ((void*)0)))
   set_bit(*old_keycode, dev->keybit);

  return 0;
 }

 return -EINVAL;
}
