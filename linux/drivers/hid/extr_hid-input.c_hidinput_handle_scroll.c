
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct hid_usage {int code; int resolution_multiplier; int wheel_accumulated; } ;
typedef int __s32 ;


 int EV_REL ;
 int REL_HWHEEL ;
 int REL_WHEEL ;
 int REL_WHEEL_HI_RES ;
 int input_event (struct input_dev*,int ,int,int) ;

__attribute__((used)) static void hidinput_handle_scroll(struct hid_usage *usage,
       struct input_dev *input,
       __s32 value)
{
 int code;
 int hi_res, lo_res;

 if (value == 0)
  return;

 if (usage->code == REL_WHEEL_HI_RES)
  code = REL_WHEEL;
 else
  code = REL_HWHEEL;







 hi_res = value * 120/usage->resolution_multiplier;

 usage->wheel_accumulated += hi_res;
 lo_res = usage->wheel_accumulated/120;
 if (lo_res)
  usage->wheel_accumulated -= lo_res * 120;

 input_event(input, EV_REL, code, lo_res);
 input_event(input, EV_REL, usage->code, hi_res);
}
