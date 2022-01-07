
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stm32f4_i2c_dev {scalar_t__ base; } ;


 scalar_t__ STM32F4_I2C_DR ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void stm32f4_i2c_write_byte(struct stm32f4_i2c_dev *i2c_dev, u8 byte)
{
 writel_relaxed(byte, i2c_dev->base + STM32F4_I2C_DR);
}
