
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_touch {int res_x; int idev; int i2c; struct pm860x_chip* chip; } ;
struct pm860x_chip {int dev; } ;
typedef int irqreturn_t ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int ACCURATE_BIT ;
 int BTN_TOUCH ;
 int IRQ_HANDLED ;
 int MEAS_LEN ;
 int MEAS_TSIX_1 ;
 int dev_dbg (int ,char*,...) ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int pm860x_bulk_read (int ,int ,int,unsigned char*) ;

__attribute__((used)) static irqreturn_t pm860x_touch_handler(int irq, void *data)
{
 struct pm860x_touch *touch = data;
 struct pm860x_chip *chip = touch->chip;
 unsigned char buf[MEAS_LEN];
 int x, y, pen_down;
 int z1, z2, rt = 0;
 int ret;

 ret = pm860x_bulk_read(touch->i2c, MEAS_TSIX_1, MEAS_LEN, buf);
 if (ret < 0)
  goto out;

 pen_down = buf[1] & (1 << 6);
 x = ((buf[0] & 0xFF) << 4) | (buf[1] & 0x0F);
 y = ((buf[2] & 0xFF) << 4) | (buf[3] & 0x0F);
 z1 = ((buf[4] & 0xFF) << 4) | (buf[5] & 0x0F);
 z2 = ((buf[6] & 0xFF) << 4) | (buf[7] & 0x0F);

 if (pen_down) {
  if ((x != 0) && (z1 != 0) && (touch->res_x != 0)) {
   rt = z2 / z1 - 1;
   rt = (rt * touch->res_x * x) >> ACCURATE_BIT;
   dev_dbg(chip->dev, "z1:%d, z2:%d, rt:%d\n",
    z1, z2, rt);
  }
  input_report_abs(touch->idev, ABS_X, x);
  input_report_abs(touch->idev, ABS_Y, y);
  input_report_abs(touch->idev, ABS_PRESSURE, rt);
  input_report_key(touch->idev, BTN_TOUCH, 1);
  dev_dbg(chip->dev, "pen down at [%d, %d].\n", x, y);
 } else {
  input_report_abs(touch->idev, ABS_PRESSURE, 0);
  input_report_key(touch->idev, BTN_TOUCH, 0);
  dev_dbg(chip->dev, "pen release\n");
 }
 input_sync(touch->idev);

out:
 return IRQ_HANDLED;
}
