
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int input; } ;
struct TYPE_3__ {int flags; int * pressure_drums; } ;
struct wiimote_data {TYPE_2__ extension; TYPE_1__ state; } ;
typedef int __u8 ;


 int ABS_HAT0X ;
 int ABS_HAT0Y ;
 int ABS_HAT1X ;
 int ABS_HAT2X ;
 int ABS_HAT2Y ;
 int ABS_HAT3X ;
 int ABS_HAT3Y ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_SELECT ;
 int BTN_START ;
 int WIIPROTO_FLAG_MP_ACTIVE ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int wiimod_drums_report_pressure (struct wiimote_data*,int,int,int,int,int *,int ,int) ;

__attribute__((used)) static void wiimod_drums_in_ext(struct wiimote_data *wdata, const __u8 *ext)
{
 __u8 pressure, which, none, hhp, sx, sy;
 __u8 o, r, y, g, b, bass, bm, bp;
 pressure = 7 - (ext[3] >> 5);
 which = (ext[2] >> 1) & 0x1f;
 none = !!(ext[2] & 0x40);
 hhp = !(ext[2] & 0x80);
 sx = ext[0] & 0x3f;
 sy = ext[1] & 0x3f;
 o = !(ext[5] & 0x80);
 r = !(ext[5] & 0x40);
 y = !(ext[5] & 0x20);
 g = !(ext[5] & 0x10);
 b = !(ext[5] & 0x08);
 bass = !(ext[5] & 0x04);
 bm = !(ext[4] & 0x10);
 bp = !(ext[4] & 0x04);

 if (wdata->state.flags & WIIPROTO_FLAG_MP_ACTIVE) {
  sx &= 0x3e;
  sy &= 0x3e;
 }

 wiimod_drums_report_pressure(wdata, none, which, pressure,
         o, &wdata->state.pressure_drums[0],
         ABS_HAT2Y, 0x0e);
 wiimod_drums_report_pressure(wdata, none, which, pressure,
         r, &wdata->state.pressure_drums[1],
         ABS_HAT0X, 0x19);
 wiimod_drums_report_pressure(wdata, none, which, pressure,
         y, &wdata->state.pressure_drums[2],
         ABS_HAT2X, 0x11);
 wiimod_drums_report_pressure(wdata, none, which, pressure,
         g, &wdata->state.pressure_drums[3],
         ABS_HAT1X, 0x12);
 wiimod_drums_report_pressure(wdata, none, which, pressure,
         b, &wdata->state.pressure_drums[4],
         ABS_HAT0Y, 0x0f);


 wiimod_drums_report_pressure(wdata, none, hhp ? 0xff : which, pressure,
         bass, &wdata->state.pressure_drums[5],
         ABS_HAT3X, 0x1b);

 wiimod_drums_report_pressure(wdata, none, hhp ? which : 0xff, pressure,
         0, &wdata->state.pressure_drums[6],
         ABS_HAT3Y, 0x0e);

 input_report_abs(wdata->extension.input, ABS_X, sx - 0x20);
 input_report_abs(wdata->extension.input, ABS_Y, sy - 0x20);

 input_report_key(wdata->extension.input, BTN_START, bp);
 input_report_key(wdata->extension.input, BTN_SELECT, bm);

 input_sync(wdata->extension.input);
}
