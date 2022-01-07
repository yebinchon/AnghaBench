
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32f4_i2c_dev {scalar_t__ speed; int parent_rate; scalar_t__ base; } ;


 int DIV_ROUND_UP (int,int) ;
 scalar_t__ STM32F4_I2C_CCR ;
 int STM32F4_I2C_CCR_CCR (int) ;
 int STM32F4_I2C_CCR_FS ;
 scalar_t__ STM32_I2C_SPEED_STANDARD ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void stm32f4_i2c_set_speed_mode(struct stm32f4_i2c_dev *i2c_dev)
{
 u32 val;
 u32 ccr = 0;

 if (i2c_dev->speed == STM32_I2C_SPEED_STANDARD) {
  val = i2c_dev->parent_rate / (100000 << 1);
 } else {
  val = DIV_ROUND_UP(i2c_dev->parent_rate, 400000 * 3);


  ccr |= STM32F4_I2C_CCR_FS;
 }

 ccr |= STM32F4_I2C_CCR_CCR(val);
 writel_relaxed(ccr, i2c_dev->base + STM32F4_I2C_CCR);
}
