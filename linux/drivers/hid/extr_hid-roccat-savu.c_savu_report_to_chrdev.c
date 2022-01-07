
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ u8 ;
struct savu_roccat_report {int * data; int type; } ;
struct savu_mouse_report_special {int * data; int type; } ;
struct roccat_common2_device {int chrdev_minor; } ;


 scalar_t__ const SAVU_MOUSE_REPORT_NUMBER_SPECIAL ;
 int roccat_report_event (int ,int const*) ;

__attribute__((used)) static void savu_report_to_chrdev(struct roccat_common2_device const *savu,
  u8 const *data)
{
 struct savu_roccat_report roccat_report;
 struct savu_mouse_report_special const *special_report;

 if (data[0] != SAVU_MOUSE_REPORT_NUMBER_SPECIAL)
  return;

 special_report = (struct savu_mouse_report_special const *)data;

 roccat_report.type = special_report->type;
 roccat_report.data[0] = special_report->data[0];
 roccat_report.data[1] = special_report->data[1];
 roccat_report_event(savu->chrdev_minor,
   (uint8_t const *)&roccat_report);
}
