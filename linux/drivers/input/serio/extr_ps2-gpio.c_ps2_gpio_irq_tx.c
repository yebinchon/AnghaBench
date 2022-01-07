
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2_gpio_data {unsigned char tx_cnt; unsigned char tx_byte; int serio; int gpio_data; int dev; int tx_done; int mode; } ;
typedef int irqreturn_t ;


 unsigned char BIT (unsigned char) ;
 int IRQ_HANDLED ;
 int PS2_MODE_RX ;




 int __ps2_gpio_write (int ,unsigned char) ;
 int complete (int *) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int gpiod_direction_input (int ) ;
 int gpiod_get_value (int ) ;
 int gpiod_set_value (int ,int) ;
 int hweight8 (unsigned char) ;
 unsigned long jiffies ;
 unsigned long usecs_to_jiffies (int) ;

__attribute__((used)) static irqreturn_t ps2_gpio_irq_tx(struct ps2_gpio_data *drvdata)
{
 unsigned char byte, cnt;
 int data;
 static unsigned long old_jiffies;

 cnt = drvdata->tx_cnt;
 byte = drvdata->tx_byte;

 if (old_jiffies == 0)
  old_jiffies = jiffies;

 if ((jiffies - old_jiffies) > usecs_to_jiffies(100)) {
  dev_err(drvdata->dev,
   "TX: timeout, probably we missed an interrupt\n");
  goto err;
 }
 old_jiffies = jiffies;

 switch (cnt) {
 case 130:

  dev_err(drvdata->dev,
   "TX: start bit should have been sent already\n");
  goto err;
 case 139:
 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
  data = byte & BIT(cnt - 1);
  gpiod_set_value(drvdata->gpio_data, data);
  break;
 case 131:

  data = !(hweight8(byte) & 1);
  gpiod_set_value(drvdata->gpio_data, data);
  break;
 case 129:

  gpiod_direction_input(drvdata->gpio_data);
  break;
 case 128:



  break;
 case 140:
  gpiod_direction_input(drvdata->gpio_data);
  data = gpiod_get_value(drvdata->gpio_data);
  if (data) {
   dev_warn(drvdata->dev, "TX: received NACK, retry\n");
   goto err;
  }

  drvdata->mode = PS2_MODE_RX;
  complete(&drvdata->tx_done);

  cnt = 1;
  old_jiffies = 0;
  goto end;
 default:



  gpiod_direction_input(drvdata->gpio_data);
  dev_err(drvdata->dev, "TX: got out of sync with the device\n");
  goto err;
 }

 cnt++;
 goto end;

err:
 cnt = 1;
 old_jiffies = 0;
 gpiod_direction_input(drvdata->gpio_data);
 __ps2_gpio_write(drvdata->serio, drvdata->tx_byte);
end:
 drvdata->tx_cnt = cnt;
 return IRQ_HANDLED;
}
