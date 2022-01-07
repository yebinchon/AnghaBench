
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as5011_device {int input_dev; int i2c_client; } ;
typedef int irqreturn_t ;


 int ABS_X ;
 int ABS_Y ;
 int AS5011_X_RES_INT ;
 int AS5011_Y_RES_INT ;
 int IRQ_HANDLED ;
 int as5011_i2c_read (int ,int ,char*) ;
 int input_report_abs (int ,int ,char) ;
 int input_sync (int ) ;

__attribute__((used)) static irqreturn_t as5011_axis_interrupt(int irq, void *dev_id)
{
 struct as5011_device *as5011 = dev_id;
 int error;
 signed char x, y;

 error = as5011_i2c_read(as5011->i2c_client, AS5011_X_RES_INT, &x);
 if (error < 0)
  goto out;

 error = as5011_i2c_read(as5011->i2c_client, AS5011_Y_RES_INT, &y);
 if (error < 0)
  goto out;

 input_report_abs(as5011->input_dev, ABS_X, x);
 input_report_abs(as5011->input_dev, ABS_Y, y);
 input_sync(as5011->input_dev);

out:
 return IRQ_HANDLED;
}
