
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_hash_dev {int flags; int req; } ;
typedef int irqreturn_t ;


 int HASH_FLAGS_CPU ;
 int HASH_FLAGS_DMA_ACTIVE ;
 int HASH_FLAGS_DMA_READY ;
 int HASH_FLAGS_OUTPUT_READY ;
 int IRQ_HANDLED ;
 int stm32_hash_finish_req (int ,int ) ;

__attribute__((used)) static irqreturn_t stm32_hash_irq_thread(int irq, void *dev_id)
{
 struct stm32_hash_dev *hdev = dev_id;

 if (HASH_FLAGS_CPU & hdev->flags) {
  if (HASH_FLAGS_OUTPUT_READY & hdev->flags) {
   hdev->flags &= ~HASH_FLAGS_OUTPUT_READY;
   goto finish;
  }
 } else if (HASH_FLAGS_DMA_READY & hdev->flags) {
  if (HASH_FLAGS_DMA_ACTIVE & hdev->flags) {
   hdev->flags &= ~HASH_FLAGS_DMA_ACTIVE;
    goto finish;
  }
 }

 return IRQ_HANDLED;

finish:

 stm32_hash_finish_req(hdev->req, 0);

 return IRQ_HANDLED;
}
