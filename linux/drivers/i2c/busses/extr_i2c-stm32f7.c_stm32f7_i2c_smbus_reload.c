
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stm32f7_i2c_msg {int count; int * buf; } ;
struct stm32f7_i2c_dev {scalar_t__ base; struct stm32f7_i2c_msg f7_msg; } ;


 scalar_t__ STM32F7_I2C_CR2 ;
 int STM32F7_I2C_CR2_NBYTES (int ) ;
 int STM32F7_I2C_CR2_NBYTES_MASK ;
 int STM32F7_I2C_CR2_RELOAD ;
 int readl_relaxed (scalar_t__) ;
 int stm32f7_i2c_read_rx_data (struct stm32f7_i2c_dev*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void stm32f7_i2c_smbus_reload(struct stm32f7_i2c_dev *i2c_dev)
{
 struct stm32f7_i2c_msg *f7_msg = &i2c_dev->f7_msg;
 u32 cr2;
 u8 *val;





 stm32f7_i2c_read_rx_data(i2c_dev);




 val = f7_msg->buf - sizeof(u8);
 f7_msg->count = *val;
 cr2 = readl_relaxed(i2c_dev->base + STM32F7_I2C_CR2);
 cr2 &= ~(STM32F7_I2C_CR2_NBYTES_MASK | STM32F7_I2C_CR2_RELOAD);
 cr2 |= STM32F7_I2C_CR2_NBYTES(f7_msg->count);
 writel_relaxed(cr2, i2c_dev->base + STM32F7_I2C_CR2);
}
