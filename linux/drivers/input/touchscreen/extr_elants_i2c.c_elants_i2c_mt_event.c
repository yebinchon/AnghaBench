
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct input_dev {int dummy; } ;
struct elants_data {TYPE_1__* client; struct input_dev* input; } ;
struct TYPE_2__ {int dev; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOUCH_MAJOR ;
 int EV_ABS ;
 int FW_POS_PRESSURE ;
 int FW_POS_STATE ;
 int FW_POS_WIDTH ;
 int FW_POS_XY ;
 int MAX_CONTACT_NUM ;
 int MT_TOOL_FINGER ;
 int dev_dbg (int *,char*,int,unsigned int,...) ;
 int input_event (struct input_dev*,int ,int ,unsigned int) ;
 int input_mt_report_slot_state (struct input_dev*,int ,int) ;
 int input_mt_slot (struct input_dev*,int) ;
 int input_mt_sync_frame (struct input_dev*) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void elants_i2c_mt_event(struct elants_data *ts, u8 *buf)
{
 struct input_dev *input = ts->input;
 unsigned int n_fingers;
 u16 finger_state;
 int i;

 n_fingers = buf[FW_POS_STATE + 1] & 0x0f;
 finger_state = ((buf[FW_POS_STATE + 1] & 0x30) << 4) |
   buf[FW_POS_STATE];

 dev_dbg(&ts->client->dev,
  "n_fingers: %u, state: %04x\n", n_fingers, finger_state);

 for (i = 0; i < MAX_CONTACT_NUM && n_fingers; i++) {
  if (finger_state & 1) {
   unsigned int x, y, p, w;
   u8 *pos;

   pos = &buf[FW_POS_XY + i * 3];
   x = (((u16)pos[0] & 0xf0) << 4) | pos[1];
   y = (((u16)pos[0] & 0x0f) << 8) | pos[2];
   p = buf[FW_POS_PRESSURE + i];
   w = buf[FW_POS_WIDTH + i];

   dev_dbg(&ts->client->dev, "i=%d x=%d y=%d p=%d w=%d\n",
    i, x, y, p, w);

   input_mt_slot(input, i);
   input_mt_report_slot_state(input, MT_TOOL_FINGER, 1);
   input_event(input, EV_ABS, ABS_MT_POSITION_X, x);
   input_event(input, EV_ABS, ABS_MT_POSITION_Y, y);
   input_event(input, EV_ABS, ABS_MT_PRESSURE, p);
   input_event(input, EV_ABS, ABS_MT_TOUCH_MAJOR, w);

   n_fingers--;
  }

  finger_state >>= 1;
 }

 input_mt_sync_frame(input);
 input_sync(input);
}
