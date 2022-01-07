
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32f4_i2c_msg {int addr; } ;
struct stm32f4_i2c_dev {scalar_t__ base; int dev; struct stm32f4_i2c_msg msg; } ;
typedef int irqreturn_t ;


 int I2C_M_RD ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ STM32F4_I2C_CR2 ;
 int STM32F4_I2C_CR2_IRQ_MASK ;
 int STM32F4_I2C_CR2_ITBUFEN ;
 scalar_t__ STM32F4_I2C_SR1 ;
 int STM32F4_I2C_SR1_ADDR ;
 int STM32F4_I2C_SR1_BTF ;
 int STM32F4_I2C_SR1_ITBUFEN_MASK ;
 int STM32F4_I2C_SR1_ITEVTEN_MASK ;
 int STM32F4_I2C_SR1_RXNE ;
 int STM32F4_I2C_SR1_SB ;
 int STM32F4_I2C_SR1_TXE ;
 scalar_t__ STM32F4_I2C_SR2 ;
 int dev_dbg (int ,char*,int,int) ;
 int readl_relaxed (scalar_t__) ;
 int stm32f4_i2c_handle_read (struct stm32f4_i2c_dev*) ;
 int stm32f4_i2c_handle_rx_addr (struct stm32f4_i2c_dev*) ;
 int stm32f4_i2c_handle_rx_done (struct stm32f4_i2c_dev*) ;
 int stm32f4_i2c_handle_write (struct stm32f4_i2c_dev*) ;
 int stm32f4_i2c_write_byte (struct stm32f4_i2c_dev*,int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t stm32f4_i2c_isr_event(int irq, void *data)
{
 struct stm32f4_i2c_dev *i2c_dev = data;
 struct stm32f4_i2c_msg *msg = &i2c_dev->msg;
 u32 possible_status = STM32F4_I2C_SR1_ITEVTEN_MASK;
 u32 status, ien, event, cr2;

 cr2 = readl_relaxed(i2c_dev->base + STM32F4_I2C_CR2);
 ien = cr2 & STM32F4_I2C_CR2_IRQ_MASK;


 if (ien & STM32F4_I2C_CR2_ITBUFEN)
  possible_status |= STM32F4_I2C_SR1_ITBUFEN_MASK;

 status = readl_relaxed(i2c_dev->base + STM32F4_I2C_SR1);
 event = status & possible_status;
 if (!event) {
  dev_dbg(i2c_dev->dev,
   "spurious evt irq (status=0x%08x, ien=0x%08x)\n",
   status, ien);
  return IRQ_NONE;
 }


 if (event & STM32F4_I2C_SR1_SB)
  stm32f4_i2c_write_byte(i2c_dev, msg->addr);


 if (event & STM32F4_I2C_SR1_ADDR) {
  if (msg->addr & I2C_M_RD)
   stm32f4_i2c_handle_rx_addr(i2c_dev);
  else
   readl_relaxed(i2c_dev->base + STM32F4_I2C_SR2);





  cr2 |= STM32F4_I2C_CR2_ITBUFEN;
  writel_relaxed(cr2, i2c_dev->base + STM32F4_I2C_CR2);
 }


 if ((event & STM32F4_I2C_SR1_TXE) && !(msg->addr & I2C_M_RD))
  stm32f4_i2c_handle_write(i2c_dev);


 if ((event & STM32F4_I2C_SR1_RXNE) && (msg->addr & I2C_M_RD))
  stm32f4_i2c_handle_read(i2c_dev);
 if (event & STM32F4_I2C_SR1_BTF) {
  if (msg->addr & I2C_M_RD)
   stm32f4_i2c_handle_rx_done(i2c_dev);
  else
   stm32f4_i2c_handle_write(i2c_dev);
 }

 return IRQ_HANDLED;
}
