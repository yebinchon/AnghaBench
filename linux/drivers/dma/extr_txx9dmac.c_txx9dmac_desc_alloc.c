
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct txx9dmac_dev {int descsize; } ;
struct TYPE_2__ {int phys; int flags; int tx_submit; } ;
struct txx9dmac_desc {int hwdesc; TYPE_1__ txd; int tx_list; } ;
struct txx9dmac_chan {int chan; struct txx9dmac_dev* ddev; } ;
typedef int gfp_t ;


 int DMA_CTRL_ACK ;
 int DMA_TO_DEVICE ;
 int INIT_LIST_HEAD (int *) ;
 int chan2parent (int *) ;
 int dma_async_tx_descriptor_init (TYPE_1__*,int *) ;
 int dma_map_single (int ,int *,int ,int ) ;
 struct txx9dmac_desc* kzalloc (int,int ) ;
 int txx9dmac_tx_submit ;

__attribute__((used)) static struct txx9dmac_desc *txx9dmac_desc_alloc(struct txx9dmac_chan *dc,
       gfp_t flags)
{
 struct txx9dmac_dev *ddev = dc->ddev;
 struct txx9dmac_desc *desc;

 desc = kzalloc(sizeof(*desc), flags);
 if (!desc)
  return ((void*)0);
 INIT_LIST_HEAD(&desc->tx_list);
 dma_async_tx_descriptor_init(&desc->txd, &dc->chan);
 desc->txd.tx_submit = txx9dmac_tx_submit;

 desc->txd.flags = DMA_CTRL_ACK;
 desc->txd.phys = dma_map_single(chan2parent(&dc->chan), &desc->hwdesc,
     ddev->descsize, DMA_TO_DEVICE);
 return desc;
}
