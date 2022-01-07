
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_hid {int flags; } ;
typedef int irqreturn_t ;


 int I2C_HID_READ_PENDING ;
 int IRQ_HANDLED ;
 int i2c_hid_get_input (struct i2c_hid*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static irqreturn_t i2c_hid_irq(int irq, void *dev_id)
{
 struct i2c_hid *ihid = dev_id;

 if (test_bit(I2C_HID_READ_PENDING, &ihid->flags))
  return IRQ_HANDLED;

 i2c_hid_get_input(ihid);

 return IRQ_HANDLED;
}
