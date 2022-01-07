
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int input; } ;
struct TYPE_3__ {int flags; int* calib_pro_sticks; } ;
struct wiimote_data {TYPE_2__ extension; TYPE_1__ state; } ;
typedef int __u8 ;
typedef int __s16 ;


 int ABS_RX ;
 int ABS_RY ;
 int ABS_X ;
 int ABS_Y ;
 size_t WIIMOD_PRO_KEY_A ;
 size_t WIIMOD_PRO_KEY_B ;
 size_t WIIMOD_PRO_KEY_DOWN ;
 size_t WIIMOD_PRO_KEY_HOME ;
 size_t WIIMOD_PRO_KEY_LEFT ;
 size_t WIIMOD_PRO_KEY_MINUS ;
 size_t WIIMOD_PRO_KEY_PLUS ;
 size_t WIIMOD_PRO_KEY_RIGHT ;
 size_t WIIMOD_PRO_KEY_THUMBL ;
 size_t WIIMOD_PRO_KEY_THUMBR ;
 size_t WIIMOD_PRO_KEY_TL ;
 size_t WIIMOD_PRO_KEY_TR ;
 size_t WIIMOD_PRO_KEY_UP ;
 size_t WIIMOD_PRO_KEY_X ;
 size_t WIIMOD_PRO_KEY_Y ;
 size_t WIIMOD_PRO_KEY_ZL ;
 size_t WIIMOD_PRO_KEY_ZR ;
 int WIIPROTO_FLAG_PRO_CALIB_DONE ;
 int abs (int) ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int * wiimod_pro_map ;

__attribute__((used)) static void wiimod_pro_in_ext(struct wiimote_data *wdata, const __u8 *ext)
{
 __s16 rx, ry, lx, ly;
 lx = (ext[0] & 0xff) | ((ext[1] & 0x0f) << 8);
 rx = (ext[2] & 0xff) | ((ext[3] & 0x0f) << 8);
 ly = (ext[4] & 0xff) | ((ext[5] & 0x0f) << 8);
 ry = (ext[6] & 0xff) | ((ext[7] & 0x0f) << 8);


 lx -= 0x800;
 ly = 0x800 - ly;
 rx -= 0x800;
 ry = 0x800 - ry;






 if (!(wdata->state.flags & WIIPROTO_FLAG_PRO_CALIB_DONE)) {
  wdata->state.flags |= WIIPROTO_FLAG_PRO_CALIB_DONE;
  if (abs(lx) < 500)
   wdata->state.calib_pro_sticks[0] = -lx;
  if (abs(ly) < 500)
   wdata->state.calib_pro_sticks[1] = -ly;
  if (abs(rx) < 500)
   wdata->state.calib_pro_sticks[2] = -rx;
  if (abs(ry) < 500)
   wdata->state.calib_pro_sticks[3] = -ry;
 }


 lx += wdata->state.calib_pro_sticks[0];
 ly += wdata->state.calib_pro_sticks[1];
 rx += wdata->state.calib_pro_sticks[2];
 ry += wdata->state.calib_pro_sticks[3];

 input_report_abs(wdata->extension.input, ABS_X, lx);
 input_report_abs(wdata->extension.input, ABS_Y, ly);
 input_report_abs(wdata->extension.input, ABS_RX, rx);
 input_report_abs(wdata->extension.input, ABS_RY, ry);

 input_report_key(wdata->extension.input,
    wiimod_pro_map[WIIMOD_PRO_KEY_RIGHT],
    !(ext[8] & 0x80));
 input_report_key(wdata->extension.input,
    wiimod_pro_map[WIIMOD_PRO_KEY_DOWN],
    !(ext[8] & 0x40));
 input_report_key(wdata->extension.input,
    wiimod_pro_map[WIIMOD_PRO_KEY_TL],
    !(ext[8] & 0x20));
 input_report_key(wdata->extension.input,
    wiimod_pro_map[WIIMOD_PRO_KEY_MINUS],
    !(ext[8] & 0x10));
 input_report_key(wdata->extension.input,
    wiimod_pro_map[WIIMOD_PRO_KEY_HOME],
    !(ext[8] & 0x08));
 input_report_key(wdata->extension.input,
    wiimod_pro_map[WIIMOD_PRO_KEY_PLUS],
    !(ext[8] & 0x04));
 input_report_key(wdata->extension.input,
    wiimod_pro_map[WIIMOD_PRO_KEY_TR],
    !(ext[8] & 0x02));

 input_report_key(wdata->extension.input,
    wiimod_pro_map[WIIMOD_PRO_KEY_ZL],
    !(ext[9] & 0x80));
 input_report_key(wdata->extension.input,
    wiimod_pro_map[WIIMOD_PRO_KEY_B],
    !(ext[9] & 0x40));
 input_report_key(wdata->extension.input,
    wiimod_pro_map[WIIMOD_PRO_KEY_Y],
    !(ext[9] & 0x20));
 input_report_key(wdata->extension.input,
    wiimod_pro_map[WIIMOD_PRO_KEY_A],
    !(ext[9] & 0x10));
 input_report_key(wdata->extension.input,
    wiimod_pro_map[WIIMOD_PRO_KEY_X],
    !(ext[9] & 0x08));
 input_report_key(wdata->extension.input,
    wiimod_pro_map[WIIMOD_PRO_KEY_ZR],
    !(ext[9] & 0x04));
 input_report_key(wdata->extension.input,
    wiimod_pro_map[WIIMOD_PRO_KEY_LEFT],
    !(ext[9] & 0x02));
 input_report_key(wdata->extension.input,
    wiimod_pro_map[WIIMOD_PRO_KEY_UP],
    !(ext[9] & 0x01));

 input_report_key(wdata->extension.input,
    wiimod_pro_map[WIIMOD_PRO_KEY_THUMBL],
    !(ext[10] & 0x02));
 input_report_key(wdata->extension.input,
    wiimod_pro_map[WIIMOD_PRO_KEY_THUMBR],
    !(ext[10] & 0x01));

 input_sync(wdata->extension.input);
}
