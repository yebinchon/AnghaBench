
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int input; } ;
struct wiimote_data {TYPE_1__ extension; } ;
typedef scalar_t__ __u8 ;
typedef int __u16 ;


 int input_report_abs (int ,int ,scalar_t__) ;

__attribute__((used)) static inline void wiimod_drums_report_pressure(struct wiimote_data *wdata,
      __u8 none, __u8 which,
      __u8 pressure, __u8 onoff,
      __u8 *store, __u16 code,
      __u8 which_code)
{
 static const __u8 default_pressure = 3;

 if (!none && which == which_code) {
  *store = pressure;
  input_report_abs(wdata->extension.input, code, *store);
 } else if (onoff != !!*store) {
  *store = onoff ? default_pressure : 0;
  input_report_abs(wdata->extension.input, code, *store);
 }
}
