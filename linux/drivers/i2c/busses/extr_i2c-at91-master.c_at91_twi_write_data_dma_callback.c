
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sg; } ;
struct at91_twi_dev {int use_alt_cmd; int buf_len; TYPE_1__ dma; int dev; } ;


 int AT91_TWI_CR ;
 int AT91_TWI_IER ;
 int AT91_TWI_STOP ;
 int AT91_TWI_TXCOMP ;
 int DMA_TO_DEVICE ;
 int at91_twi_write (struct at91_twi_dev*,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int sg_dma_address (int *) ;

__attribute__((used)) static void at91_twi_write_data_dma_callback(void *data)
{
 struct at91_twi_dev *dev = (struct at91_twi_dev *)data;

 dma_unmap_single(dev->dev, sg_dma_address(&dev->dma.sg[0]),
    dev->buf_len, DMA_TO_DEVICE);
 at91_twi_write(dev, AT91_TWI_IER, AT91_TWI_TXCOMP);
 if (!dev->use_alt_cmd)
  at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_STOP);
}
