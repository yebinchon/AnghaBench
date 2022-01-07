
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_aes_dma {int chan; } ;
struct atmel_aes_dev {struct atmel_aes_dma dst; struct atmel_aes_dma src; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;




 int dmaengine_terminate_all (int ) ;

__attribute__((used)) static void atmel_aes_dma_transfer_stop(struct atmel_aes_dev *dd,
     enum dma_transfer_direction dir)
{
 struct atmel_aes_dma *dma;

 switch (dir) {
 case 128:
  dma = &dd->src;
  break;

 case 129:
  dma = &dd->dst;
  break;

 default:
  return;
 }

 dmaengine_terminate_all(dma->chan);
}
