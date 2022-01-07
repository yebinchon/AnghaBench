
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiimote_state {int** calib_bboard; } ;
struct TYPE_2__ {int input; } ;
struct wiimote_data {TYPE_1__ extension; struct wiimote_state state; } ;
typedef int __u8 ;
typedef int __s32 ;


 int ABS_HAT0X ;
 int ABS_HAT0Y ;
 int ABS_HAT1X ;
 int ABS_HAT1Y ;
 int input_report_abs (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void wiimod_bboard_in_ext(struct wiimote_data *wdata,
     const __u8 *ext)
{
 __s32 val[4], tmp, div;
 unsigned int i;
 struct wiimote_state *s = &wdata->state;
 val[0] = ext[0];
 val[0] <<= 8;
 val[0] |= ext[1];

 val[1] = ext[2];
 val[1] <<= 8;
 val[1] |= ext[3];

 val[2] = ext[4];
 val[2] <<= 8;
 val[2] |= ext[5];

 val[3] = ext[6];
 val[3] <<= 8;
 val[3] |= ext[7];


 for (i = 0; i < 4; i++) {
  if (val[i] <= s->calib_bboard[i][0]) {
   tmp = 0;
  } else if (val[i] < s->calib_bboard[i][1]) {
   tmp = val[i] - s->calib_bboard[i][0];
   tmp *= 1700;
   div = s->calib_bboard[i][1] - s->calib_bboard[i][0];
   tmp /= div ? div : 1;
  } else {
   tmp = val[i] - s->calib_bboard[i][1];
   tmp *= 1700;
   div = s->calib_bboard[i][2] - s->calib_bboard[i][1];
   tmp /= div ? div : 1;
   tmp += 1700;
  }
  val[i] = tmp;
 }

 input_report_abs(wdata->extension.input, ABS_HAT0X, val[0]);
 input_report_abs(wdata->extension.input, ABS_HAT0Y, val[1]);
 input_report_abs(wdata->extension.input, ABS_HAT1X, val[2]);
 input_report_abs(wdata->extension.input, ABS_HAT1Y, val[3]);
 input_sync(wdata->extension.input);
}
