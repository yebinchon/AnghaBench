
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rohm_ts_data {int finger_count; unsigned int* contact_count; struct input_dev* input; struct i2c_client* client; } ;
struct input_mt_pos {int x; int y; } ;
struct input_dev {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
typedef int s16 ;
typedef int irqreturn_t ;
typedef int buf ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int CALIBRATION_DONE ;
 int CALIBRATION_REQUEST ;

 int INT_ALL ;
 int INT_CLEAR ;
 int INT_MASK ;
 int IRQ_HANDLED ;
 int MAX_CONTACTS ;
 int MT_TOOL_FINGER ;
 int POS_X1_H ;
 int POS_X1_L ;
 int POS_X2_H ;
 int POS_X2_L ;
 int POS_Y1_H ;
 int POS_Y1_L ;
 int POS_Y2_H ;
 int POS_Y2_L ;
 int PROGRAM_LOAD_DONE ;
 int READ_POS_BUF (int ) ;
 int ROHM_TS_DISPLACEMENT_MAX ;

 int SLEEP_IN ;
 int SLEEP_OUT ;
 int TOUCH_GESTURE ;
 int TOUCH_MASK ;
 int dev_dbg (struct device*,char*) ;
 int dev_warn (struct device*,char*,int) ;
 unsigned int* dual_touch_threshold ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int input_mt_assign_slots (struct input_dev*,int*,struct input_mt_pos*,int,int ) ;
 int input_mt_report_pointer_emulation (struct input_dev*,int) ;
 int input_mt_report_slot_state (struct input_dev*,int ,int) ;
 int input_mt_slot (struct input_dev*,int) ;
 int input_mt_sync_frame (struct input_dev*) ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int memset (int*,int ,int) ;
 int rohm_i2c_burst_read (struct i2c_client*,int ,int*,int) ;
 int rohm_ts_manual_calibration (struct rohm_ts_data*) ;
 unsigned int* single_touch_threshold ;
 unsigned int* untouch_threshold ;

__attribute__((used)) static irqreturn_t rohm_ts_soft_irq(int irq, void *dev_id)
{
 struct rohm_ts_data *ts = dev_id;
 struct i2c_client *client = ts->client;
 struct input_dev *input_dev = ts->input;
 struct device *dev = &client->dev;

 u8 buf[10];

 struct input_mt_pos pos[MAX_CONTACTS];
 int slots[MAX_CONTACTS];
 u8 touch_flags;
 unsigned int threshold;
 int finger_count = -1;
 int prev_finger_count = ts->finger_count;
 int count;
 int error;
 int i;

 error = i2c_smbus_write_byte_data(client, INT_MASK, INT_ALL);
 if (error)
  return IRQ_HANDLED;


 error = i2c_smbus_write_byte_data(client, INT_CLEAR, 0xff);
 if (error)
  return IRQ_HANDLED;



 error = rohm_i2c_burst_read(client, POS_X1_H, buf, sizeof(buf));
 if (error)
  return IRQ_HANDLED;

 touch_flags = buf[((TOUCH_GESTURE) - POS_X1_H)] & TOUCH_MASK;
 if (touch_flags) {

  pos[0].x = ((s16)buf[((POS_X1_H) - POS_X1_H)] << 2) |
      buf[((POS_X1_L) - POS_X1_H)];
  pos[0].y = ((s16)buf[((POS_Y1_H) - POS_X1_H)] << 2) |
      buf[((POS_Y1_L) - POS_X1_H)];
  pos[1].x = ((s16)buf[((POS_X2_H) - POS_X1_H)] << 2) |
      buf[((POS_X2_L) - POS_X1_H)];
  pos[1].y = ((s16)buf[((POS_Y2_H) - POS_X1_H)] << 2) |
      buf[((POS_Y2_L) - POS_X1_H)];
 }

 switch (touch_flags) {
 case 0:
  threshold = untouch_threshold[prev_finger_count];
  if (++ts->contact_count[0] >= threshold)
   finger_count = 0;
  break;

 case 128:
  threshold = single_touch_threshold[prev_finger_count];
  if (++ts->contact_count[1] >= threshold)
   finger_count = 1;

  if (finger_count == 1) {
   if (pos[1].x != 0 && pos[1].y != 0) {
    pos[0].x = pos[1].x;
    pos[0].y = pos[1].y;
    pos[1].x = 0;
    pos[1].y = 0;
   }
  }
  break;

 case 129:
  threshold = dual_touch_threshold[prev_finger_count];
  if (++ts->contact_count[2] >= threshold)
   finger_count = 2;
  break;

 default:
  dev_dbg(dev,
   "Three or more touches are not supported\n");
  return IRQ_HANDLED;
 }

 if (finger_count >= 0) {
  if (prev_finger_count != finger_count) {
   count = ts->contact_count[finger_count];
   memset(ts->contact_count, 0, sizeof(ts->contact_count));
   ts->contact_count[finger_count] = count;
  }

  input_mt_assign_slots(input_dev, slots, pos,
          finger_count, ROHM_TS_DISPLACEMENT_MAX);

  for (i = 0; i < finger_count; i++) {
   input_mt_slot(input_dev, slots[i]);
   input_mt_report_slot_state(input_dev,
         MT_TOOL_FINGER, 1);
   input_report_abs(input_dev,
      ABS_MT_POSITION_X, pos[i].x);
   input_report_abs(input_dev,
      ABS_MT_POSITION_Y, pos[i].y);
  }

  input_mt_sync_frame(input_dev);
  input_mt_report_pointer_emulation(input_dev, 1);
  input_sync(input_dev);

  ts->finger_count = finger_count;
 }

 if (buf[((TOUCH_GESTURE) - POS_X1_H)] & CALIBRATION_REQUEST) {
  error = rohm_ts_manual_calibration(ts);
  if (error)
   dev_warn(dev, "manual calibration failed: %d\n",
     error);
 }

 i2c_smbus_write_byte_data(client, INT_MASK,
      CALIBRATION_DONE | SLEEP_OUT | SLEEP_IN |
      PROGRAM_LOAD_DONE);

 return IRQ_HANDLED;
}
