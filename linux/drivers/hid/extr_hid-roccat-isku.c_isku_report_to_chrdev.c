
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ u8 ;
struct isku_roccat_report {scalar_t__ profile; int data2; int data1; int event; } ;
struct isku_report_button {int data2; int data1; int event; } ;
struct isku_device {int chrdev_minor; scalar_t__ actual_profile; } ;


 scalar_t__ const ISKU_REPORT_NUMBER_BUTTON ;
 int roccat_report_event (int ,int const*) ;

__attribute__((used)) static void isku_report_to_chrdev(struct isku_device const *isku,
  u8 const *data)
{
 struct isku_roccat_report roccat_report;
 struct isku_report_button const *button_report;

 if (data[0] != ISKU_REPORT_NUMBER_BUTTON)
  return;

 button_report = (struct isku_report_button const *)data;

 roccat_report.event = button_report->event;
 roccat_report.data1 = button_report->data1;
 roccat_report.data2 = button_report->data2;
 roccat_report.profile = isku->actual_profile + 1;
 roccat_report_event(isku->chrdev_minor,
   (uint8_t const *)&roccat_report);
}
