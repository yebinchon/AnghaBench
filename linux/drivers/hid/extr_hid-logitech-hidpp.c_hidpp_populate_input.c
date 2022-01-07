
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct hidpp_device {int quirks; struct input_dev* input; } ;


 int HIDPP_QUIRK_CLASS_M560 ;
 int HIDPP_QUIRK_CLASS_WTP ;
 int HIDPP_QUIRK_HIDPP_EXTRA_MOUSE_BTNS ;
 int HIDPP_QUIRK_HIDPP_WHEELS ;
 int hidpp10_extra_mouse_buttons_populate_input (struct hidpp_device*,struct input_dev*) ;
 int hidpp10_wheel_populate_input (struct hidpp_device*,struct input_dev*) ;
 int m560_populate_input (struct hidpp_device*,struct input_dev*) ;
 int wtp_populate_input (struct hidpp_device*,struct input_dev*) ;

__attribute__((used)) static void hidpp_populate_input(struct hidpp_device *hidpp,
     struct input_dev *input)
{
 hidpp->input = input;

 if (hidpp->quirks & HIDPP_QUIRK_CLASS_WTP)
  wtp_populate_input(hidpp, input);
 else if (hidpp->quirks & HIDPP_QUIRK_CLASS_M560)
  m560_populate_input(hidpp, input);

 if (hidpp->quirks & HIDPP_QUIRK_HIDPP_WHEELS)
  hidpp10_wheel_populate_input(hidpp, input);

 if (hidpp->quirks & HIDPP_QUIRK_HIDPP_EXTRA_MOUSE_BTNS)
  hidpp10_extra_mouse_buttons_populate_input(hidpp, input);
}
