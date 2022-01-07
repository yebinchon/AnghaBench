
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct key_entry {unsigned int code; int keycode; int type; } const key_entry ;
struct input_dev {int dummy; } ;


 int KEY_UNKNOWN ;
 int KE_KEY ;
 struct key_entry const* sparse_keymap_entry_from_scancode (struct input_dev*,unsigned int) ;
 int sparse_keymap_report_entry (struct input_dev*,struct key_entry const*,unsigned int,int) ;

bool sparse_keymap_report_event(struct input_dev *dev, unsigned int code,
    unsigned int value, bool autorelease)
{
 const struct key_entry *ke =
  sparse_keymap_entry_from_scancode(dev, code);
 struct key_entry unknown_ke;

 if (ke) {
  sparse_keymap_report_entry(dev, ke, value, autorelease);
  return 1;
 }


 unknown_ke.type = KE_KEY;
 unknown_ke.code = code;
 unknown_ke.keycode = KEY_UNKNOWN;
 sparse_keymap_report_entry(dev, &unknown_ke, value, 1);

 return 0;
}
