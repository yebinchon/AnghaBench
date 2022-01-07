
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int tx_submit; } ;
struct imxdma_desc {int node; int status; TYPE_1__ desc; } ;
struct imxdma_channel {scalar_t__ descs_allocated; int ld_free; int dma_request; } ;
struct imx_dma_data {int dma_request; } ;
struct dma_chan {struct imx_dma_data* private; } ;
struct dma_async_tx_descriptor {int dummy; } ;


 int DMA_COMPLETE ;
 int DMA_CTRL_ACK ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IMXDMA_MAX_CHAN_DESCRIPTORS ;
 int dma_async_tx_descriptor_init (TYPE_1__*,struct dma_chan*) ;
 int imxdma_tx_submit ;
 struct imxdma_desc* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 struct imxdma_channel* to_imxdma_chan (struct dma_chan*) ;

__attribute__((used)) static int imxdma_alloc_chan_resources(struct dma_chan *chan)
{
 struct imxdma_channel *imxdmac = to_imxdma_chan(chan);
 struct imx_dma_data *data = chan->private;

 if (data != ((void*)0))
  imxdmac->dma_request = data->dma_request;

 while (imxdmac->descs_allocated < IMXDMA_MAX_CHAN_DESCRIPTORS) {
  struct imxdma_desc *desc;

  desc = kzalloc(sizeof(*desc), GFP_KERNEL);
  if (!desc)
   break;
  memset(&desc->desc, 0, sizeof(struct dma_async_tx_descriptor));
  dma_async_tx_descriptor_init(&desc->desc, chan);
  desc->desc.tx_submit = imxdma_tx_submit;

  desc->desc.flags = DMA_CTRL_ACK;
  desc->status = DMA_COMPLETE;

  list_add_tail(&desc->node, &imxdmac->ld_free);
  imxdmac->descs_allocated++;
 }

 if (!imxdmac->descs_allocated)
  return -ENOMEM;

 return imxdmac->descs_allocated;
}
