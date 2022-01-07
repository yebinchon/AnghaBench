
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int input; } ;
struct TYPE_3__ {int flags; } ;
struct wiimote_data {TYPE_2__ extension; TYPE_1__ state; } ;
typedef int __u8 ;


 int ABS_HAT0X ;
 int ABS_HAT1X ;
 int ABS_X ;
 int ABS_Y ;
 size_t WIIMOD_GUITAR_KEY_B ;
 size_t WIIMOD_GUITAR_KEY_DOWN ;
 size_t WIIMOD_GUITAR_KEY_G ;
 size_t WIIMOD_GUITAR_KEY_MINUS ;
 size_t WIIMOD_GUITAR_KEY_O ;
 size_t WIIMOD_GUITAR_KEY_PLUS ;
 size_t WIIMOD_GUITAR_KEY_R ;
 size_t WIIMOD_GUITAR_KEY_UP ;
 size_t WIIMOD_GUITAR_KEY_Y ;
 int WIIPROTO_FLAG_MP_ACTIVE ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int * wiimod_guitar_map ;

__attribute__((used)) static void wiimod_guitar_in_ext(struct wiimote_data *wdata, const __u8 *ext)
{
 __u8 sx, sy, tb, wb, bd, bm, bp, bo, br, bb, bg, by, bu;
 sx = ext[0] & 0x3f;
 sy = ext[1] & 0x3f;
 tb = ext[2] & 0x1f;
 wb = ext[3] & 0x1f;
 bd = !(ext[4] & 0x40);
 bm = !(ext[4] & 0x10);
 bp = !(ext[4] & 0x04);
 bo = !(ext[5] & 0x80);
 br = !(ext[5] & 0x40);
 bb = !(ext[5] & 0x20);
 bg = !(ext[5] & 0x10);
 by = !(ext[5] & 0x08);
 bu = !(ext[5] & 0x01);

 if (wdata->state.flags & WIIPROTO_FLAG_MP_ACTIVE) {
  bu = !(ext[0] & 0x01);
  sx &= 0x3e;
  sy &= 0x3e;
 }

 input_report_abs(wdata->extension.input, ABS_X, sx - 0x20);
 input_report_abs(wdata->extension.input, ABS_Y, sy - 0x20);
 input_report_abs(wdata->extension.input, ABS_HAT0X, tb);
 input_report_abs(wdata->extension.input, ABS_HAT1X, wb - 0x10);

 input_report_key(wdata->extension.input,
    wiimod_guitar_map[WIIMOD_GUITAR_KEY_G],
    bg);
 input_report_key(wdata->extension.input,
    wiimod_guitar_map[WIIMOD_GUITAR_KEY_R],
    br);
 input_report_key(wdata->extension.input,
    wiimod_guitar_map[WIIMOD_GUITAR_KEY_Y],
    by);
 input_report_key(wdata->extension.input,
    wiimod_guitar_map[WIIMOD_GUITAR_KEY_B],
    bb);
 input_report_key(wdata->extension.input,
    wiimod_guitar_map[WIIMOD_GUITAR_KEY_O],
    bo);
 input_report_key(wdata->extension.input,
    wiimod_guitar_map[WIIMOD_GUITAR_KEY_UP],
    bu);
 input_report_key(wdata->extension.input,
    wiimod_guitar_map[WIIMOD_GUITAR_KEY_DOWN],
    bd);
 input_report_key(wdata->extension.input,
    wiimod_guitar_map[WIIMOD_GUITAR_KEY_PLUS],
    bp);
 input_report_key(wdata->extension.input,
    wiimod_guitar_map[WIIMOD_GUITAR_KEY_MINUS],
    bm);

 input_sync(wdata->extension.input);
}
