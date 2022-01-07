
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handle {int dummy; } ;


 unsigned int BTN_MIDDLE ;
 unsigned int BTN_RIGHT ;
 unsigned int EV_KEY ;
 int input_report_key (int ,unsigned int,int) ;
 int input_sync (int ) ;
 int mac_hid_emumouse_dev ;
 unsigned int mouse_button2_keycode ;
 unsigned int mouse_button3_keycode ;

__attribute__((used)) static bool mac_hid_emumouse_filter(struct input_handle *handle,
        unsigned int type, unsigned int code,
        int value)
{
 unsigned int btn;

 if (type != EV_KEY)
  return 0;

 if (code == mouse_button2_keycode)
  btn = BTN_MIDDLE;
 else if (code == mouse_button3_keycode)
  btn = BTN_RIGHT;
 else
  return 0;

 input_report_key(mac_hid_emumouse_dev, btn, value);
 input_sync(mac_hid_emumouse_dev);

 return 1;
}
