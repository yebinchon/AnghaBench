
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct stm32f7_i2c_msg {int size; size_t* smbus_buf; } ;
struct stm32f7_i2c_dev {int dev; scalar_t__ base; struct stm32f7_i2c_msg f7_msg; } ;


 int EBADMSG ;
 int EINVAL ;






 scalar_t__ STM32F7_I2C_PECR ;
 int dev_err (int ,char*,...) ;
 size_t readl_relaxed (scalar_t__) ;

__attribute__((used)) static int stm32f7_i2c_smbus_check_pec(struct stm32f7_i2c_dev *i2c_dev)
{
 struct stm32f7_i2c_msg *f7_msg = &i2c_dev->f7_msg;
 u8 count, internal_pec, received_pec;

 internal_pec = readl_relaxed(i2c_dev->base + STM32F7_I2C_PECR);

 switch (f7_msg->size) {
 case 131:
 case 130:
  received_pec = f7_msg->smbus_buf[1];
  break;
 case 128:
 case 129:
  received_pec = f7_msg->smbus_buf[2];
  break;
 case 133:
 case 132:
  count = f7_msg->smbus_buf[0];
  received_pec = f7_msg->smbus_buf[count];
  break;
 default:
  dev_err(i2c_dev->dev, "Unsupported smbus protocol for PEC\n");
  return -EINVAL;
 }

 if (internal_pec != received_pec) {
  dev_err(i2c_dev->dev, "Bad PEC 0x%02x vs. 0x%02x\n",
   internal_pec, received_pec);
  return -EBADMSG;
 }

 return 0;
}
