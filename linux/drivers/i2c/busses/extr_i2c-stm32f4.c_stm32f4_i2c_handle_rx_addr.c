
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32f4_i2c_msg {int count; int stop; } ;
struct stm32f4_i2c_dev {scalar_t__ base; struct stm32f4_i2c_msg msg; } ;


 scalar_t__ STM32F4_I2C_CR1 ;
 int STM32F4_I2C_CR1_ACK ;
 int STM32F4_I2C_CR1_POS ;
 int STM32F4_I2C_CR1_START ;
 int STM32F4_I2C_CR1_STOP ;
 scalar_t__ STM32F4_I2C_SR2 ;
 int readl_relaxed (scalar_t__) ;
 int stm32f4_i2c_terminate_xfer (struct stm32f4_i2c_dev*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void stm32f4_i2c_handle_rx_addr(struct stm32f4_i2c_dev *i2c_dev)
{
 struct stm32f4_i2c_msg *msg = &i2c_dev->msg;
 u32 cr1;

 switch (msg->count) {
 case 0:
  stm32f4_i2c_terminate_xfer(i2c_dev);


  readl_relaxed(i2c_dev->base + STM32F4_I2C_SR2);
  break;
 case 1:







  cr1 = readl_relaxed(i2c_dev->base + STM32F4_I2C_CR1);
  cr1 &= ~(STM32F4_I2C_CR1_ACK | STM32F4_I2C_CR1_POS);
  writel_relaxed(cr1, i2c_dev->base + STM32F4_I2C_CR1);

  readl_relaxed(i2c_dev->base + STM32F4_I2C_SR2);

  if (msg->stop)
   cr1 |= STM32F4_I2C_CR1_STOP;
  else
   cr1 |= STM32F4_I2C_CR1_START;
  writel_relaxed(cr1, i2c_dev->base + STM32F4_I2C_CR1);
  break;
 case 2:







  cr1 = readl_relaxed(i2c_dev->base + STM32F4_I2C_CR1);
  cr1 &= ~STM32F4_I2C_CR1_ACK;
  cr1 |= STM32F4_I2C_CR1_POS;
  writel_relaxed(cr1, i2c_dev->base + STM32F4_I2C_CR1);

  readl_relaxed(i2c_dev->base + STM32F4_I2C_SR2);
  break;

 default:






  cr1 = readl_relaxed(i2c_dev->base + STM32F4_I2C_CR1);
  cr1 |= STM32F4_I2C_CR1_ACK;
  cr1 &= ~STM32F4_I2C_CR1_POS;
  writel_relaxed(cr1, i2c_dev->base + STM32F4_I2C_CR1);

  readl_relaxed(i2c_dev->base + STM32F4_I2C_SR2);
  break;
 }
}
