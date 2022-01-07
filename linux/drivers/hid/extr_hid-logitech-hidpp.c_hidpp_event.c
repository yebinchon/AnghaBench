
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidpp_scroll_counter {scalar_t__ wheel_multiplier; } ;
struct hidpp_device {int quirks; int * input; struct hidpp_scroll_counter vertical_wheel_counter; } ;
struct hid_usage {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;
typedef int __s32 ;


 int HIDPP_QUIRK_HI_RES_SCROLL ;
 struct hidpp_device* hid_get_drvdata (struct hid_device*) ;
 int hidpp_scroll_counter_handle_scroll (int *,struct hidpp_scroll_counter*,int ) ;

__attribute__((used)) static int hidpp_event(struct hid_device *hdev, struct hid_field *field,
 struct hid_usage *usage, __s32 value)
{



 struct hidpp_device *hidpp = hid_get_drvdata(hdev);
 struct hidpp_scroll_counter *counter;

 if (!hidpp)
  return 0;

 counter = &hidpp->vertical_wheel_counter;





 if (!(hidpp->quirks & HIDPP_QUIRK_HI_RES_SCROLL) || value == 0
     || hidpp->input == ((void*)0) || counter->wheel_multiplier == 0)
  return 0;

 hidpp_scroll_counter_handle_scroll(hidpp->input, counter, value);
 return 1;
}
