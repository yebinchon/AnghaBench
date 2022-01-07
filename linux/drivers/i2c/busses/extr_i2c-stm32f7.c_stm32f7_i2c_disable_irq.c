
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32f7_i2c_dev {scalar_t__ base; } ;


 scalar_t__ STM32F7_I2C_CR1 ;
 int stm32f7_i2c_clr_bits (scalar_t__,int ) ;

__attribute__((used)) static void stm32f7_i2c_disable_irq(struct stm32f7_i2c_dev *i2c_dev, u32 mask)
{
 stm32f7_i2c_clr_bits(i2c_dev->base + STM32F7_I2C_CR1, mask);
}
