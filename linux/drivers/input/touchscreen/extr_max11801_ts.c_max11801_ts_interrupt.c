
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max11801_data {int input_dev; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
typedef int irqreturn_t ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;




 int EVENT_TAG_MASK ;
 int EV_KEY ;
 int FIFO_RD_CMD ;
 int GENERNAL_STATUS_REG ;
 int IRQ_HANDLED ;
 int MAX11801_FIFO_INT ;
 int MAX11801_FIFO_OVERFLOW ;
 int MEASURE_TAG_MASK ;
 int MEASURE_X_TAG ;
 int MEASURE_Y_TAG ;
 int XY_BUFSIZE ;
 int XY_BUF_OFFSET ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client*,int ,int,int*) ;
 int input_event (int ,int ,int ,int) ;
 int input_report_abs (int ,int ,int) ;
 int input_sync (int ) ;
 int read_register (struct i2c_client*,int ) ;

__attribute__((used)) static irqreturn_t max11801_ts_interrupt(int irq, void *dev_id)
{
 struct max11801_data *data = dev_id;
 struct i2c_client *client = data->client;
 int status, i, ret;
 u8 buf[XY_BUFSIZE];
 int x = -1;
 int y = -1;

 status = read_register(data->client, GENERNAL_STATUS_REG);

 if (status & (MAX11801_FIFO_INT | MAX11801_FIFO_OVERFLOW)) {
  status = read_register(data->client, GENERNAL_STATUS_REG);

  ret = i2c_smbus_read_i2c_block_data(client, FIFO_RD_CMD,
          XY_BUFSIZE, buf);





  if (ret < XY_BUFSIZE)
   goto out;

  for (i = 0; i < XY_BUFSIZE; i += XY_BUFSIZE / 2) {
   if ((buf[i + 1] & MEASURE_TAG_MASK) == MEASURE_X_TAG)
    x = (buf[i] << XY_BUF_OFFSET) +
        (buf[i + 1] >> XY_BUF_OFFSET);
   else if ((buf[i + 1] & MEASURE_TAG_MASK) == MEASURE_Y_TAG)
    y = (buf[i] << XY_BUF_OFFSET) +
        (buf[i + 1] >> XY_BUF_OFFSET);
  }

  if ((buf[1] & EVENT_TAG_MASK) != (buf[3] & EVENT_TAG_MASK))
   goto out;

  switch (buf[1] & EVENT_TAG_MASK) {
  case 130:

  case 129:
   input_report_abs(data->input_dev, ABS_X, x);
   input_report_abs(data->input_dev, ABS_Y, y);
   input_event(data->input_dev, EV_KEY, BTN_TOUCH, 1);
   input_sync(data->input_dev);
   break;

  case 128:
   input_event(data->input_dev, EV_KEY, BTN_TOUCH, 0);
   input_sync(data->input_dev);
   break;

  case 131:
   break;
  }
 }
out:
 return IRQ_HANDLED;
}
