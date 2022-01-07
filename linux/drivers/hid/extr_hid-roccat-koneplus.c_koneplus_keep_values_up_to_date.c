
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct koneplus_mouse_report_button {int data1; int type; } ;
struct koneplus_device {int dummy; } ;




 int koneplus_profile_activated (struct koneplus_device*,int ) ;

__attribute__((used)) static void koneplus_keep_values_up_to_date(struct koneplus_device *koneplus,
  u8 const *data)
{
 struct koneplus_mouse_report_button const *button_report;

 switch (data[0]) {
 case 128:
  button_report = (struct koneplus_mouse_report_button const *)data;
  switch (button_report->type) {
  case 129:
   koneplus_profile_activated(koneplus, button_report->data1 - 1);
   break;
  }
  break;
 }
}
