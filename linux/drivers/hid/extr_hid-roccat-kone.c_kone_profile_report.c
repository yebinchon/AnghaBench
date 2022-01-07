
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint ;
struct kone_roccat_report {scalar_t__ key; int value; int event; } ;
struct kone_device {int chrdev_minor; } ;


 int kone_mouse_event_switch_profile ;
 int roccat_report_event (int ,int *) ;

__attribute__((used)) static void kone_profile_report(struct kone_device *kone, uint new_profile)
{
 struct kone_roccat_report roccat_report;

 roccat_report.event = kone_mouse_event_switch_profile;
 roccat_report.value = new_profile;
 roccat_report.key = 0;
 roccat_report_event(kone->chrdev_minor, (uint8_t *)&roccat_report);
}
