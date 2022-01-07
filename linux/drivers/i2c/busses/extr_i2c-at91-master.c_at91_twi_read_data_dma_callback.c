
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sg; } ;
struct at91_twi_dev {int buf_len; int buf; int use_alt_cmd; TYPE_1__ dma; int dev; } ;


 int AT91_TWI_IER ;
 unsigned int AT91_TWI_RXRDY ;
 unsigned int AT91_TWI_TXCOMP ;
 int DMA_FROM_DEVICE ;
 int at91_twi_write (struct at91_twi_dev*,int ,unsigned int) ;
 int dma_unmap_single (int ,int ,int,int ) ;
 int sg_dma_address (int *) ;

__attribute__((used)) static void at91_twi_read_data_dma_callback(void *data)
{
 struct at91_twi_dev *dev = (struct at91_twi_dev *)data;
 unsigned ier = AT91_TWI_TXCOMP;

 dma_unmap_single(dev->dev, sg_dma_address(&dev->dma.sg[0]),
    dev->buf_len, DMA_FROM_DEVICE);

 if (!dev->use_alt_cmd) {

  dev->buf += dev->buf_len - 2;
  dev->buf_len = 2;
  ier |= AT91_TWI_RXRDY;
 }
 at91_twi_write(dev, AT91_TWI_IER, ier);
}
