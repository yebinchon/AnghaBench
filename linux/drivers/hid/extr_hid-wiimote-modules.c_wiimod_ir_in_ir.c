
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct wiimote_data {int ir; TYPE_1__ state; } ;
typedef int __u8 ;
typedef int __u16 ;


 int ABS_HAT0X ;
 int ABS_HAT0Y ;
 int ABS_HAT1X ;
 int ABS_HAT1Y ;
 int ABS_HAT2X ;
 int ABS_HAT2Y ;
 int ABS_HAT3X ;
 int ABS_HAT3Y ;
 int WIIPROTO_FLAGS_IR ;
 int input_report_abs (int ,int,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void wiimod_ir_in_ir(struct wiimote_data *wdata, const __u8 *ir,
       bool packed, unsigned int id)
{
 __u16 x, y;
 __u8 xid, yid;
 bool sync = 0;

 if (!(wdata->state.flags & WIIPROTO_FLAGS_IR))
  return;

 switch (id) {
 case 0:
  xid = ABS_HAT0X;
  yid = ABS_HAT0Y;
  break;
 case 1:
  xid = ABS_HAT1X;
  yid = ABS_HAT1Y;
  break;
 case 2:
  xid = ABS_HAT2X;
  yid = ABS_HAT2Y;
  break;
 case 3:
  xid = ABS_HAT3X;
  yid = ABS_HAT3Y;
  sync = 1;
  break;
 default:
  return;
 }
 if (packed) {
  x = ir[1] | ((ir[0] & 0x03) << 8);
  y = ir[2] | ((ir[0] & 0x0c) << 6);
 } else {
  x = ir[0] | ((ir[2] & 0x30) << 4);
  y = ir[1] | ((ir[2] & 0xc0) << 2);
 }

 input_report_abs(wdata->ir, xid, x);
 input_report_abs(wdata->ir, yid, y);

 if (sync)
  input_sync(wdata->ir);
}
