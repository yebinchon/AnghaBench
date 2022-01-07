
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct TYPE_3__ {unsigned int len; struct scatterlist* sgl; } ;
struct TYPE_4__ {TYPE_1__ sg; } ;
struct dw_edma_transfer {int direction; unsigned long flags; int cyclic; TYPE_2__ xfer; struct dma_chan* dchan; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;


 struct dma_async_tx_descriptor* dw_edma_device_transfer (struct dw_edma_transfer*) ;

__attribute__((used)) static struct dma_async_tx_descriptor *
dw_edma_device_prep_slave_sg(struct dma_chan *dchan, struct scatterlist *sgl,
        unsigned int len,
        enum dma_transfer_direction direction,
        unsigned long flags, void *context)
{
 struct dw_edma_transfer xfer;

 xfer.dchan = dchan;
 xfer.direction = direction;
 xfer.xfer.sg.sgl = sgl;
 xfer.xfer.sg.len = len;
 xfer.flags = flags;
 xfer.cyclic = 0;

 return dw_edma_device_transfer(&xfer);
}
