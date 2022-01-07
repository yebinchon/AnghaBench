
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct kovaplus_mouse_report_button {int type; int data2; int data1; } ;
struct kovaplus_device {int actual_y_sensitivity; int actual_x_sensitivity; int actual_cpi; } ;





 scalar_t__ const KOVAPLUS_MOUSE_REPORT_NUMBER_BUTTON ;
 int kovaplus_convert_event_cpi (int ) ;
 int kovaplus_profile_activated (struct kovaplus_device*,int ) ;

__attribute__((used)) static void kovaplus_keep_values_up_to_date(struct kovaplus_device *kovaplus,
  u8 const *data)
{
 struct kovaplus_mouse_report_button const *button_report;

 if (data[0] != KOVAPLUS_MOUSE_REPORT_NUMBER_BUTTON)
  return;

 button_report = (struct kovaplus_mouse_report_button const *)data;

 switch (button_report->type) {
 case 129:
  kovaplus_profile_activated(kovaplus, button_report->data1 - 1);
  break;
 case 130:
  kovaplus->actual_cpi = kovaplus_convert_event_cpi(button_report->data1);
  break;
 case 128:
  kovaplus->actual_x_sensitivity = button_report->data1;
  kovaplus->actual_y_sensitivity = button_report->data2;
  break;
 default:
  break;
 }
}
