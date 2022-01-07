
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2_gpio_data {unsigned char rx_byte; unsigned char rx_cnt; int serio; int dev; int write_enable; int gpio_data; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int PS2_CMD_RESEND ;
 unsigned char PS2_DEV_RET_ACK ;
 unsigned char PS2_DEV_RET_NACK ;



 int SERIO_PARITY ;
 int __ps2_gpio_write (int ,int ) ;
 int dev_dbg (int ,char*,unsigned char) ;
 int dev_err (int ,char*,...) ;
 int dev_warn (int ,char*) ;
 int gpiod_get_value (int ) ;
 int hweight8 (unsigned char) ;
 unsigned long jiffies ;
 int serio_interrupt (int ,unsigned char,int) ;
 scalar_t__ unlikely (int) ;
 unsigned long usecs_to_jiffies (int) ;

__attribute__((used)) static irqreturn_t ps2_gpio_irq_rx(struct ps2_gpio_data *drvdata)
{
 unsigned char byte, cnt;
 int data;
 int rxflags = 0;
 static unsigned long old_jiffies;

 byte = drvdata->rx_byte;
 cnt = drvdata->rx_cnt;

 if (old_jiffies == 0)
  old_jiffies = jiffies;

 if ((jiffies - old_jiffies) > usecs_to_jiffies(100)) {
  dev_err(drvdata->dev,
   "RX: timeout, probably we missed an interrupt\n");
  goto err;
 }
 old_jiffies = jiffies;

 data = gpiod_get_value(drvdata->gpio_data);
 if (unlikely(data < 0)) {
  dev_err(drvdata->dev, "RX: failed to get data gpio val: %d\n",
   data);
  goto err;
 }

 switch (cnt) {
 case 129:

  if (unlikely(data)) {
   dev_err(drvdata->dev, "RX: start bit should be low\n");
   goto err;
  }
  break;
 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:

  if (data)
   byte |= (data << (cnt - 1));
  break;
 case 130:

  if (!((hweight8(byte) & 1) ^ data)) {
   rxflags |= SERIO_PARITY;
   dev_warn(drvdata->dev, "RX: parity error\n");
   if (!drvdata->write_enable)
    goto err;
  }




  if (!drvdata->write_enable) {
   if (byte == PS2_DEV_RET_NACK)
    goto err;
   else if (byte == PS2_DEV_RET_ACK)
    break;
  }







  serio_interrupt(drvdata->serio, byte, rxflags);
  dev_dbg(drvdata->dev, "RX: sending byte 0x%x\n", byte);
  break;
 case 128:

  if (unlikely(!data)) {
   dev_err(drvdata->dev, "RX: stop bit should be high\n");
   goto err;
  }
  cnt = byte = 0;
  old_jiffies = 0;
  goto end;
 default:
  dev_err(drvdata->dev, "RX: got out of sync with the device\n");
  goto err;
 }

 cnt++;
 goto end;

err:
 cnt = byte = 0;
 old_jiffies = 0;
 __ps2_gpio_write(drvdata->serio, PS2_CMD_RESEND);
end:
 drvdata->rx_cnt = cnt;
 drvdata->rx_byte = byte;
 return IRQ_HANDLED;
}
