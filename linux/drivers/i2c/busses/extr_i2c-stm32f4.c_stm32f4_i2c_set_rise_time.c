
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32f4_i2c_dev {scalar_t__ speed; scalar_t__ base; int parent_rate; } ;


 int DIV_ROUND_UP (int ,int ) ;
 int HZ_TO_MHZ ;
 scalar_t__ STM32F4_I2C_TRISE ;
 int STM32F4_I2C_TRISE_VALUE (int) ;
 scalar_t__ STM32_I2C_SPEED_STANDARD ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void stm32f4_i2c_set_rise_time(struct stm32f4_i2c_dev *i2c_dev)
{
 u32 freq = DIV_ROUND_UP(i2c_dev->parent_rate, HZ_TO_MHZ);
 u32 trise;
 if (i2c_dev->speed == STM32_I2C_SPEED_STANDARD)
  trise = freq + 1;
 else
  trise = freq * 3 / 10 + 1;

 writel_relaxed(STM32F4_I2C_TRISE_VALUE(trise),
         i2c_dev->base + STM32F4_I2C_TRISE);
}
