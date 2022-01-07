
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct stm32f4_i2c_dev {scalar_t__ speed; scalar_t__ base; int dev; int parent_rate; int clk; } ;


 scalar_t__ DIV_ROUND_UP (int ,int ) ;
 int EINVAL ;
 int HZ_TO_MHZ ;
 scalar_t__ STM32F4_I2C_CR2 ;
 scalar_t__ STM32F4_I2C_CR2_FREQ (scalar_t__) ;
 scalar_t__ STM32F4_I2C_MAX_FREQ ;
 scalar_t__ STM32F4_I2C_MIN_FAST_FREQ ;
 scalar_t__ STM32F4_I2C_MIN_STANDARD_FREQ ;
 scalar_t__ STM32_I2C_SPEED_STANDARD ;
 int clk_get_rate (int ) ;
 int dev_err (int ,char*) ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static int stm32f4_i2c_set_periph_clk_freq(struct stm32f4_i2c_dev *i2c_dev)
{
 u32 freq;
 u32 cr2 = 0;

 i2c_dev->parent_rate = clk_get_rate(i2c_dev->clk);
 freq = DIV_ROUND_UP(i2c_dev->parent_rate, HZ_TO_MHZ);

 if (i2c_dev->speed == STM32_I2C_SPEED_STANDARD) {





  if (freq < STM32F4_I2C_MIN_STANDARD_FREQ ||
      freq > STM32F4_I2C_MAX_FREQ) {
   dev_err(i2c_dev->dev,
    "bad parent clk freq for standard mode\n");
   return -EINVAL;
  }
 } else {





  if (freq < STM32F4_I2C_MIN_FAST_FREQ ||
      freq > STM32F4_I2C_MAX_FREQ) {
   dev_err(i2c_dev->dev,
    "bad parent clk freq for fast mode\n");
   return -EINVAL;
  }
 }

 cr2 |= STM32F4_I2C_CR2_FREQ(freq);
 writel_relaxed(cr2, i2c_dev->base + STM32F4_I2C_CR2);

 return 0;
}
