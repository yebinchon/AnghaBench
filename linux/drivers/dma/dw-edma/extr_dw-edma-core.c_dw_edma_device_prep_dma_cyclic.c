
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; size_t cnt; int paddr; } ;
struct TYPE_4__ {TYPE_1__ cyclic; } ;
struct dw_edma_transfer {int direction; unsigned long flags; int cyclic; TYPE_2__ xfer; struct dma_chan* dchan; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef int dma_addr_t ;


 struct dma_async_tx_descriptor* dw_edma_device_transfer (struct dw_edma_transfer*) ;

__attribute__((used)) static struct dma_async_tx_descriptor *
dw_edma_device_prep_dma_cyclic(struct dma_chan *dchan, dma_addr_t paddr,
          size_t len, size_t count,
          enum dma_transfer_direction direction,
          unsigned long flags)
{
 struct dw_edma_transfer xfer;

 xfer.dchan = dchan;
 xfer.direction = direction;
 xfer.xfer.cyclic.paddr = paddr;
 xfer.xfer.cyclic.len = len;
 xfer.xfer.cyclic.cnt = count;
 xfer.flags = flags;
 xfer.cyclic = 1;

 return dw_edma_device_transfer(&xfer);
}
