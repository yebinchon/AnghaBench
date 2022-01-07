
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct kone_roccat_report {int event; int key; int value; } ;
struct kone_mouse_event {int event; int macro_key; int value; } ;
struct kone_device {int chrdev_minor; int actual_profile; } ;


 int kone_keystroke_action_press ;






 int roccat_report_event (int ,int *) ;

__attribute__((used)) static void kone_report_to_chrdev(struct kone_device const *kone,
  struct kone_mouse_event const *event)
{
 struct kone_roccat_report roccat_report;

 switch (event->event) {
 case 128:
 case 129:
 case 130:
 case 131:
  roccat_report.event = event->event;
  roccat_report.value = event->value;
  roccat_report.key = 0;
  roccat_report_event(kone->chrdev_minor,
    (uint8_t *)&roccat_report);
  break;
 case 133:
 case 132:
  if (event->value == kone_keystroke_action_press) {
   roccat_report.event = event->event;
   roccat_report.value = kone->actual_profile;
   roccat_report.key = event->macro_key;
   roccat_report_event(kone->chrdev_minor,
     (uint8_t *)&roccat_report);
  }
  break;
 }

}
