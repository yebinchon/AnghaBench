
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pyra_mouse_event_button {int data1; int type; } ;
struct pyra_device {int actual_cpi; } ;





 int profile_activated (struct pyra_device*,int ) ;

__attribute__((used)) static void pyra_keep_values_up_to_date(struct pyra_device *pyra,
  u8 const *data)
{
 struct pyra_mouse_event_button const *button_event;

 switch (data[0]) {
 case 128:
  button_event = (struct pyra_mouse_event_button const *)data;
  switch (button_event->type) {
  case 129:
   profile_activated(pyra, button_event->data1 - 1);
   break;
  case 130:
   pyra->actual_cpi = button_event->data1;
   break;
  }
  break;
 }
}
