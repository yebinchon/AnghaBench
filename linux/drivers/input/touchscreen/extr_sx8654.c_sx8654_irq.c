
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sx8654 {TYPE_1__* client; int input; int props; } ;
typedef int irqreturn_t ;
typedef int data ;
struct TYPE_3__ {int dev; } ;


 int BTN_TOUCH ;
 int CMD_READ_REGISTER ;
 int I2C_REG_IRQSRC ;
 int IRQ_HANDLED ;
 int IRQ_PENRELEASE ;
 int IRQ_PENTOUCH_TOUCHCONVDONE ;
 int dev_dbg (int *,char*,...) ;
 int i2c_master_recv (TYPE_1__*,int*,int) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int touchscreen_report_pos (int ,int *,unsigned int,unsigned int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t sx8654_irq(int irq, void *handle)
{
 struct sx8654 *sx8654 = handle;
 int irqsrc;
 u8 data[4];
 unsigned int x, y;
 int retval;

 irqsrc = i2c_smbus_read_byte_data(sx8654->client,
       CMD_READ_REGISTER | I2C_REG_IRQSRC);
 dev_dbg(&sx8654->client->dev, "irqsrc = 0x%x", irqsrc);

 if (irqsrc < 0)
  goto out;

 if (irqsrc & IRQ_PENRELEASE) {
  dev_dbg(&sx8654->client->dev, "pen release interrupt");

  input_report_key(sx8654->input, BTN_TOUCH, 0);
  input_sync(sx8654->input);
 }

 if (irqsrc & IRQ_PENTOUCH_TOUCHCONVDONE) {
  dev_dbg(&sx8654->client->dev, "pen touch interrupt");

  retval = i2c_master_recv(sx8654->client, data, sizeof(data));
  if (retval != sizeof(data))
   goto out;


  if (unlikely(data[0] & 0x80 || data[2] & 0x80))
   goto out;

  x = ((data[0] & 0xf) << 8) | (data[1]);
  y = ((data[2] & 0xf) << 8) | (data[3]);

  touchscreen_report_pos(sx8654->input, &sx8654->props, x, y,
           0);
  input_report_key(sx8654->input, BTN_TOUCH, 1);
  input_sync(sx8654->input);

  dev_dbg(&sx8654->client->dev, "point(%4d,%4d)\n", x, y);
 }

out:
 return IRQ_HANDLED;
}
