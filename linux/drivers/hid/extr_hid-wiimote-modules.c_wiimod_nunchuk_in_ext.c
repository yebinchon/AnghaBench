
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
typedef int __s16 ;


 int ABS_HAT0X ;
 int ABS_HAT0Y ;
 int ABS_RX ;
 int ABS_RY ;
 int ABS_RZ ;
 size_t WIIMOD_NUNCHUK_KEY_C ;
 size_t WIIMOD_NUNCHUK_KEY_Z ;
 int WIIPROTO_FLAG_MP_ACTIVE ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int * wiimod_nunchuk_map ;

__attribute__((used)) static void wiimod_nunchuk_in_ext(struct wiimote_data *wdata, const __u8 *ext)
{
 __s16 x, y, z, bx, by;
 bx = ext[0];
 by = ext[1];
 bx -= 128;
 by -= 128;

 x = ext[2] << 2;
 y = ext[3] << 2;
 z = ext[4] << 2;

 if (wdata->state.flags & WIIPROTO_FLAG_MP_ACTIVE) {
  x |= (ext[5] >> 3) & 0x02;
  y |= (ext[5] >> 4) & 0x02;
  z &= ~0x4;
  z |= (ext[5] >> 5) & 0x06;
 } else {
  x |= (ext[5] >> 2) & 0x03;
  y |= (ext[5] >> 4) & 0x03;
  z |= (ext[5] >> 6) & 0x03;
 }

 x -= 0x200;
 y -= 0x200;
 z -= 0x200;

 input_report_abs(wdata->extension.input, ABS_HAT0X, bx);
 input_report_abs(wdata->extension.input, ABS_HAT0Y, by);

 input_report_abs(wdata->extension.input, ABS_RX, x);
 input_report_abs(wdata->extension.input, ABS_RY, y);
 input_report_abs(wdata->extension.input, ABS_RZ, z);

 if (wdata->state.flags & WIIPROTO_FLAG_MP_ACTIVE) {
  input_report_key(wdata->extension.input,
   wiimod_nunchuk_map[WIIMOD_NUNCHUK_KEY_Z],
   !(ext[5] & 0x04));
  input_report_key(wdata->extension.input,
   wiimod_nunchuk_map[WIIMOD_NUNCHUK_KEY_C],
   !(ext[5] & 0x08));
 } else {
  input_report_key(wdata->extension.input,
   wiimod_nunchuk_map[WIIMOD_NUNCHUK_KEY_Z],
   !(ext[5] & 0x01));
  input_report_key(wdata->extension.input,
   wiimod_nunchuk_map[WIIMOD_NUNCHUK_KEY_C],
   !(ext[5] & 0x02));
 }

 input_sync(wdata->extension.input);
}
