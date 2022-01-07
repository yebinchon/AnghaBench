
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_aes_dev {int dummy; } ;


 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int atmel_aes_dma_transfer_stop (struct atmel_aes_dev*,int ) ;
 int atmel_aes_unmap (struct atmel_aes_dev*) ;

__attribute__((used)) static void atmel_aes_dma_stop(struct atmel_aes_dev *dd)
{
 atmel_aes_dma_transfer_stop(dd, DMA_MEM_TO_DEV);
 atmel_aes_dma_transfer_stop(dd, DMA_DEV_TO_MEM);
 atmel_aes_unmap(dd);
}
