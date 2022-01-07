
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
struct arvo_special_report {int event; } ;
struct arvo_roccat_report {int button; int action; int profile; } ;
struct arvo_device {int chrdev_minor; int actual_profile; } ;


 int ARVO_ROCCAT_REPORT_ACTION_PRESS ;
 int ARVO_ROCCAT_REPORT_ACTION_RELEASE ;
 int ARVO_SPECIAL_REPORT_EVENT_ACTION_PRESS ;
 int ARVO_SPECIAL_REPORT_EVENT_MASK_ACTION ;
 int ARVO_SPECIAL_REPORT_EVENT_MASK_BUTTON ;
 int roccat_report_event (int ,int const*) ;

__attribute__((used)) static void arvo_report_to_chrdev(struct arvo_device const *arvo,
  u8 const *data)
{
 struct arvo_special_report const *special_report;
 struct arvo_roccat_report roccat_report;

 special_report = (struct arvo_special_report const *)data;

 roccat_report.profile = arvo->actual_profile;
 roccat_report.button = special_report->event &
   ARVO_SPECIAL_REPORT_EVENT_MASK_BUTTON;
 if ((special_report->event & ARVO_SPECIAL_REPORT_EVENT_MASK_ACTION) ==
   ARVO_SPECIAL_REPORT_EVENT_ACTION_PRESS)
  roccat_report.action = ARVO_ROCCAT_REPORT_ACTION_PRESS;
 else
  roccat_report.action = ARVO_ROCCAT_REPORT_ACTION_RELEASE;

 roccat_report_event(arvo->chrdev_minor,
   (uint8_t const *)&roccat_report);
}
