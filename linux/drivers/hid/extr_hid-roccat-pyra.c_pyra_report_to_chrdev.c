
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ u8 ;
struct pyra_roccat_report {int type; int value; int key; } ;
struct pyra_mouse_event_button {int type; int data1; int data2; } ;
struct pyra_device {int chrdev_minor; int actual_profile; } ;


 int PYRA_MOUSE_EVENT_BUTTON_PRESS ;





 scalar_t__ const PYRA_MOUSE_REPORT_NUMBER_BUTTON ;
 int roccat_report_event (int ,int const*) ;

__attribute__((used)) static void pyra_report_to_chrdev(struct pyra_device const *pyra,
  u8 const *data)
{
 struct pyra_roccat_report roccat_report;
 struct pyra_mouse_event_button const *button_event;

 if (data[0] != PYRA_MOUSE_REPORT_NUMBER_BUTTON)
  return;

 button_event = (struct pyra_mouse_event_button const *)data;

 switch (button_event->type) {
 case 130:
 case 132:
  roccat_report.type = button_event->type;
  roccat_report.value = button_event->data1;
  roccat_report.key = 0;
  roccat_report_event(pyra->chrdev_minor,
    (uint8_t const *)&roccat_report);
  break;
 case 131:
 case 128:
 case 129:
  if (button_event->data2 == PYRA_MOUSE_EVENT_BUTTON_PRESS) {
   roccat_report.type = button_event->type;
   roccat_report.key = button_event->data1;




   roccat_report.value = pyra->actual_profile + 1;
   roccat_report_event(pyra->chrdev_minor,
     (uint8_t const *)&roccat_report);
  }
  break;
 }
}
