
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_hash_dev {int flags; int dma_completion; } ;


 int HASH_FLAGS_DMA_READY ;
 int complete (int *) ;

__attribute__((used)) static void stm32_hash_dma_callback(void *param)
{
 struct stm32_hash_dev *hdev = param;

 complete(&hdev->dma_completion);

 hdev->flags |= HASH_FLAGS_DMA_READY;
}
