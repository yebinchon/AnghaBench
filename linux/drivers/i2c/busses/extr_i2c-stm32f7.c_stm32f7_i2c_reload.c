
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32f7_i2c_msg {scalar_t__ count; } ;
struct stm32f7_i2c_dev {scalar_t__ base; scalar_t__ use_dma; struct stm32f7_i2c_msg f7_msg; } ;


 scalar_t__ STM32F7_I2C_CR2 ;
 int STM32F7_I2C_CR2_NBYTES (scalar_t__) ;
 int STM32F7_I2C_CR2_NBYTES_MASK ;
 int STM32F7_I2C_CR2_RELOAD ;
 scalar_t__ STM32F7_I2C_MAX_LEN ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void stm32f7_i2c_reload(struct stm32f7_i2c_dev *i2c_dev)
{
 struct stm32f7_i2c_msg *f7_msg = &i2c_dev->f7_msg;
 u32 cr2;

 if (i2c_dev->use_dma)
  f7_msg->count -= STM32F7_I2C_MAX_LEN;

 cr2 = readl_relaxed(i2c_dev->base + STM32F7_I2C_CR2);

 cr2 &= ~STM32F7_I2C_CR2_NBYTES_MASK;
 if (f7_msg->count > STM32F7_I2C_MAX_LEN) {
  cr2 |= STM32F7_I2C_CR2_NBYTES(STM32F7_I2C_MAX_LEN);
 } else {
  cr2 &= ~STM32F7_I2C_CR2_RELOAD;
  cr2 |= STM32F7_I2C_CR2_NBYTES(f7_msg->count);
 }

 writel_relaxed(cr2, i2c_dev->base + STM32F7_I2C_CR2);
}
