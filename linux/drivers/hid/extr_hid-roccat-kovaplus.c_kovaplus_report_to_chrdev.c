
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ u8 ;
struct kovaplus_roccat_report {scalar_t__ type; int data2; scalar_t__ data1; scalar_t__ button; scalar_t__ profile; } ;
struct kovaplus_mouse_report_button {scalar_t__ type; int data2; scalar_t__ data1; } ;
struct kovaplus_device {int chrdev_minor; scalar_t__ actual_profile; } ;


 scalar_t__ KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_CPI ;
 scalar_t__ KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_MACRO ;
 scalar_t__ KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_PROFILE_2 ;
 scalar_t__ KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_QUICKLAUNCH ;
 scalar_t__ KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_SHORTCUT ;
 scalar_t__ KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_TIMER ;
 scalar_t__ const KOVAPLUS_MOUSE_REPORT_NUMBER_BUTTON ;
 scalar_t__ kovaplus_convert_event_cpi (scalar_t__) ;
 int roccat_report_event (int ,int const*) ;

__attribute__((used)) static void kovaplus_report_to_chrdev(struct kovaplus_device const *kovaplus,
  u8 const *data)
{
 struct kovaplus_roccat_report roccat_report;
 struct kovaplus_mouse_report_button const *button_report;

 if (data[0] != KOVAPLUS_MOUSE_REPORT_NUMBER_BUTTON)
  return;

 button_report = (struct kovaplus_mouse_report_button const *)data;

 if (button_report->type == KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_PROFILE_2)
  return;

 roccat_report.type = button_report->type;
 roccat_report.profile = kovaplus->actual_profile + 1;

 if (roccat_report.type == KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_MACRO ||
   roccat_report.type == KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_SHORTCUT ||
   roccat_report.type == KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_QUICKLAUNCH ||
   roccat_report.type == KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_TIMER)
  roccat_report.button = button_report->data1;
 else
  roccat_report.button = 0;

 if (roccat_report.type == KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_CPI)
  roccat_report.data1 = kovaplus_convert_event_cpi(button_report->data1);
 else
  roccat_report.data1 = button_report->data1;

 roccat_report.data2 = button_report->data2;

 roccat_report_event(kovaplus->chrdev_minor,
   (uint8_t const *)&roccat_report);
}
