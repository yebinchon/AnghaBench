
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mip4_ts {int event_format; int input; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int BIT (int) ;
 int MIP4_MAX_FINGERS ;
 int MT_TOOL_FINGER ;
 int dev_dbg (int *,char*,int,int,int,int,int) ;
 int dev_err (int *,char*,int) ;
 int input_mt_report_slot_state (int ,int ,int) ;
 int input_mt_slot (int ,int) ;
 int input_mt_sync_frame (int ) ;
 int input_report_abs (int ,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void mip4_report_touch(struct mip4_ts *ts, u8 *packet)
{
 int id;
 bool hover;
 bool palm;
 bool state;
 u16 x, y;
 u8 pressure_stage = 0;
 u8 pressure;
 u8 size;
 u8 touch_major;
 u8 touch_minor;

 switch (ts->event_format) {
 case 0:
 case 1:

  state = packet[0] & BIT(7);
  hover = packet[0] & BIT(5);
  palm = packet[0] & BIT(4);
  id = (packet[0] & 0x0F) - 1;
  x = ((packet[1] & 0x0F) << 8) | packet[2];
  y = (((packet[1] >> 4) & 0x0F) << 8) |
   packet[3];
  pressure = packet[4];
  size = packet[5];
  if (ts->event_format == 0) {
   touch_major = packet[5];
   touch_minor = packet[5];
  } else {
   touch_major = packet[6];
   touch_minor = packet[7];
  }
  break;

 case 3:
 default:

  id = (packet[0] & 0x0F) - 1;
  hover = packet[1] & BIT(2);
  palm = packet[1] & BIT(1);
  state = packet[1] & BIT(0);
  x = ((packet[2] & 0x0F) << 8) | packet[3];
  y = (((packet[2] >> 4) & 0x0F) << 8) |
   packet[4];
  size = packet[6];
  pressure_stage = (packet[7] & 0xF0) >> 4;
  pressure = ((packet[7] & 0x0F) << 8) |
   packet[8];
  touch_major = packet[9];
  touch_minor = packet[10];
  break;
 }

 dev_dbg(&ts->client->dev,
  "Screen - Slot: %d State: %d X: %04d Y: %04d Z: %d\n",
  id, state, x, y, pressure);

 if (unlikely(id < 0 || id >= MIP4_MAX_FINGERS)) {
  dev_err(&ts->client->dev, "Screen - invalid slot ID: %d\n", id);
 } else if (state) {

  input_mt_slot(ts->input, id);
  input_mt_report_slot_state(ts->input, MT_TOOL_FINGER, 1);
  input_report_abs(ts->input, ABS_MT_POSITION_X, x);
  input_report_abs(ts->input, ABS_MT_POSITION_Y, y);
  input_report_abs(ts->input, ABS_MT_PRESSURE, pressure);
  input_report_abs(ts->input, ABS_MT_TOUCH_MAJOR, touch_major);
  input_report_abs(ts->input, ABS_MT_TOUCH_MINOR, touch_minor);
 } else {

  input_mt_slot(ts->input, id);
  input_mt_report_slot_state(ts->input, MT_TOOL_FINGER, 0);
 }

 input_mt_sync_frame(ts->input);
}
