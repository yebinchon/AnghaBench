
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_hash_dev {int flags; } ;
typedef int irqreturn_t ;


 int HASH_FLAGS_OUTPUT_READY ;
 int HASH_IMR ;
 int HASH_SR ;
 int HASH_SR_OUTPUT_READY ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int stm32_hash_read (struct stm32_hash_dev*,int ) ;
 int stm32_hash_write (struct stm32_hash_dev*,int ,int) ;

__attribute__((used)) static irqreturn_t stm32_hash_irq_handler(int irq, void *dev_id)
{
 struct stm32_hash_dev *hdev = dev_id;
 u32 reg;

 reg = stm32_hash_read(hdev, HASH_SR);
 if (reg & HASH_SR_OUTPUT_READY) {
  reg &= ~HASH_SR_OUTPUT_READY;
  stm32_hash_write(hdev, HASH_SR, reg);
  hdev->flags |= HASH_FLAGS_OUTPUT_READY;

  stm32_hash_write(hdev, HASH_IMR, 0);
  return IRQ_WAKE_THREAD;
 }

 return IRQ_NONE;
}
