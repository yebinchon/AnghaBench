
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wacom_i2c {int* data; int prox; int tool; int client; struct input_dev* input; } ;
struct input_dev {int dummy; } ;
typedef int irqreturn_t ;
typedef int __le16 ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_STYLUS ;
 int BTN_STYLUS2 ;
 int BTN_TOOL_PEN ;
 int BTN_TOOL_RUBBER ;
 int BTN_TOUCH ;
 int IRQ_HANDLED ;
 int i2c_master_recv (int ,int*,int) ;
 int input_report_abs (struct input_dev*,int ,unsigned int) ;
 int input_report_key (struct input_dev*,int ,unsigned char) ;
 int input_sync (struct input_dev*) ;
 unsigned int le16_to_cpup (int *) ;

__attribute__((used)) static irqreturn_t wacom_i2c_irq(int irq, void *dev_id)
{
 struct wacom_i2c *wac_i2c = dev_id;
 struct input_dev *input = wac_i2c->input;
 u8 *data = wac_i2c->data;
 unsigned int x, y, pressure;
 unsigned char tsw, f1, f2, ers;
 int error;

 error = i2c_master_recv(wac_i2c->client,
    wac_i2c->data, sizeof(wac_i2c->data));
 if (error < 0)
  goto out;

 tsw = data[3] & 0x01;
 ers = data[3] & 0x04;
 f1 = data[3] & 0x02;
 f2 = data[3] & 0x10;
 x = le16_to_cpup((__le16 *)&data[4]);
 y = le16_to_cpup((__le16 *)&data[6]);
 pressure = le16_to_cpup((__le16 *)&data[8]);

 if (!wac_i2c->prox)
  wac_i2c->tool = (data[3] & 0x0c) ?
   BTN_TOOL_RUBBER : BTN_TOOL_PEN;

 wac_i2c->prox = data[3] & 0x20;

 input_report_key(input, BTN_TOUCH, tsw || ers);
 input_report_key(input, wac_i2c->tool, wac_i2c->prox);
 input_report_key(input, BTN_STYLUS, f1);
 input_report_key(input, BTN_STYLUS2, f2);
 input_report_abs(input, ABS_X, x);
 input_report_abs(input, ABS_Y, y);
 input_report_abs(input, ABS_PRESSURE, pressure);
 input_sync(input);

out:
 return IRQ_HANDLED;
}
