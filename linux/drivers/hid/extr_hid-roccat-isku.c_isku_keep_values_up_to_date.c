
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isku_report_button {int data1; int event; } ;
struct isku_device {int dummy; } ;




 int isku_profile_activated (struct isku_device*,int ) ;

__attribute__((used)) static void isku_keep_values_up_to_date(struct isku_device *isku,
  u8 const *data)
{
 struct isku_report_button const *button_report;

 switch (data[0]) {
 case 128:
  button_report = (struct isku_report_button const *)data;
  switch (button_report->event) {
  case 129:
   isku_profile_activated(isku, button_report->data1 - 1);
   break;
  }
  break;
 }
}
