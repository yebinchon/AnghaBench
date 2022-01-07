
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
typedef int touch_data ;
struct iqs5xx_touch_data {int abs_y; int abs_x; int strength; } ;
struct iqs5xx_private {scalar_t__ bl_status; struct input_dev* input; struct i2c_client* client; } ;
struct input_dev {int dummy; } ;
struct i2c_client {int dummy; } ;
typedef int irqreturn_t ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ARRAY_SIZE (struct iqs5xx_touch_data*) ;
 int IQS5XX_ABS_X ;
 scalar_t__ IQS5XX_BL_STATUS_RESET ;
 int IQS5XX_END_COMM ;
 int IQS5XX_NUM_CONTACTS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MT_TOOL_FINGER ;
 scalar_t__ be16_to_cpu (int ) ;
 scalar_t__ input_mt_report_slot_state (struct input_dev*,int ,int) ;
 int input_mt_slot (struct input_dev*,int) ;
 int input_mt_sync_frame (struct input_dev*) ;
 int input_report_abs (struct input_dev*,int ,scalar_t__) ;
 int input_sync (struct input_dev*) ;
 int iqs5xx_read_burst (struct i2c_client*,int ,struct iqs5xx_touch_data*,int) ;
 int iqs5xx_write_byte (struct i2c_client*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static irqreturn_t iqs5xx_irq(int irq, void *data)
{
 struct iqs5xx_private *iqs5xx = data;
 struct iqs5xx_touch_data touch_data[IQS5XX_NUM_CONTACTS];
 struct i2c_client *client = iqs5xx->client;
 struct input_dev *input = iqs5xx->input;
 int error, i;






 if (iqs5xx->bl_status == IQS5XX_BL_STATUS_RESET)
  return IRQ_NONE;

 error = iqs5xx_read_burst(client, IQS5XX_ABS_X,
      touch_data, sizeof(touch_data));
 if (error)
  return IRQ_NONE;

 for (i = 0; i < ARRAY_SIZE(touch_data); i++) {
  u16 pressure = be16_to_cpu(touch_data[i].strength);

  input_mt_slot(input, i);
  if (input_mt_report_slot_state(input, MT_TOOL_FINGER,
            pressure != 0)) {
   input_report_abs(input, ABS_MT_POSITION_X,
      be16_to_cpu(touch_data[i].abs_x));
   input_report_abs(input, ABS_MT_POSITION_Y,
      be16_to_cpu(touch_data[i].abs_y));
   input_report_abs(input, ABS_MT_PRESSURE, pressure);
  }
 }

 input_mt_sync_frame(input);
 input_sync(input);

 error = iqs5xx_write_byte(client, IQS5XX_END_COMM, 0);
 if (error)
  return IRQ_NONE;






 usleep_range(50, 100);

 return IRQ_HANDLED;
}
