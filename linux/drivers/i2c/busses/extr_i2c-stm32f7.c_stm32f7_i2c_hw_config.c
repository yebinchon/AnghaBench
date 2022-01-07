
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stm32f7_i2c_timings {int scll; int sclh; int sdadel; int scldel; int presc; } ;
struct TYPE_2__ {scalar_t__ analog_filter; } ;
struct stm32f7_i2c_dev {scalar_t__ base; TYPE_1__ setup; struct stm32f7_i2c_timings timing; } ;


 scalar_t__ STM32F7_I2C_CR1 ;
 int STM32F7_I2C_CR1_ANFOFF ;
 int STM32F7_I2C_CR1_PE ;
 scalar_t__ STM32F7_I2C_TIMINGR ;
 int STM32F7_I2C_TIMINGR_PRESC (int ) ;
 int STM32F7_I2C_TIMINGR_SCLDEL (int ) ;
 int STM32F7_I2C_TIMINGR_SCLH (int ) ;
 int STM32F7_I2C_TIMINGR_SCLL (int ) ;
 int STM32F7_I2C_TIMINGR_SDADEL (int ) ;
 int stm32f7_i2c_clr_bits (scalar_t__,int ) ;
 int stm32f7_i2c_set_bits (scalar_t__,int ) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void stm32f7_i2c_hw_config(struct stm32f7_i2c_dev *i2c_dev)
{
 struct stm32f7_i2c_timings *t = &i2c_dev->timing;
 u32 timing = 0;


 timing |= STM32F7_I2C_TIMINGR_PRESC(t->presc);
 timing |= STM32F7_I2C_TIMINGR_SCLDEL(t->scldel);
 timing |= STM32F7_I2C_TIMINGR_SDADEL(t->sdadel);
 timing |= STM32F7_I2C_TIMINGR_SCLH(t->sclh);
 timing |= STM32F7_I2C_TIMINGR_SCLL(t->scll);
 writel_relaxed(timing, i2c_dev->base + STM32F7_I2C_TIMINGR);


 if (i2c_dev->setup.analog_filter)
  stm32f7_i2c_clr_bits(i2c_dev->base + STM32F7_I2C_CR1,
         STM32F7_I2C_CR1_ANFOFF);
 else
  stm32f7_i2c_set_bits(i2c_dev->base + STM32F7_I2C_CR1,
         STM32F7_I2C_CR1_ANFOFF);
 stm32f7_i2c_set_bits(i2c_dev->base + STM32F7_I2C_CR1,
        STM32F7_I2C_CR1_PE);
}
