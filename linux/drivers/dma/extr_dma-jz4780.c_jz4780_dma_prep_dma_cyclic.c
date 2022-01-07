
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct jz4780_dma_desc {int vdesc; TYPE_2__* desc; } ;
struct jz4780_dma_chan {int vchan; TYPE_1__* desc; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef size_t dma_addr_t ;
struct TYPE_4__ {int dcm; unsigned int dtc; } ;
struct TYPE_3__ {int vdesc; } ;


 int DMA_CYCLIC ;
 int JZ_DMA_DCM_LINK ;
 int JZ_DMA_DCM_TIE ;
 struct jz4780_dma_desc* jz4780_dma_desc_alloc (struct jz4780_dma_chan*,unsigned int,int ) ;
 int jz4780_dma_desc_free (int *) ;
 int jz4780_dma_setup_hwdesc (struct jz4780_dma_chan*,TYPE_2__*,size_t,size_t,int) ;
 struct jz4780_dma_chan* to_jz4780_dma_chan (struct dma_chan*) ;
 struct dma_async_tx_descriptor* vchan_tx_prep (int *,int *,unsigned long) ;

__attribute__((used)) static struct dma_async_tx_descriptor *jz4780_dma_prep_dma_cyclic(
 struct dma_chan *chan, dma_addr_t buf_addr, size_t buf_len,
 size_t period_len, enum dma_transfer_direction direction,
 unsigned long flags)
{
 struct jz4780_dma_chan *jzchan = to_jz4780_dma_chan(chan);
 struct jz4780_dma_desc *desc;
 unsigned int periods, i;
 int err;

 if (buf_len % period_len)
  return ((void*)0);

 periods = buf_len / period_len;

 desc = jz4780_dma_desc_alloc(jzchan, periods, DMA_CYCLIC);
 if (!desc)
  return ((void*)0);

 for (i = 0; i < periods; i++) {
  err = jz4780_dma_setup_hwdesc(jzchan, &desc->desc[i], buf_addr,
           period_len, direction);
  if (err < 0) {
   jz4780_dma_desc_free(&jzchan->desc->vdesc);
   return ((void*)0);
  }

  buf_addr += period_len;







  desc->desc[i].dcm |= JZ_DMA_DCM_TIE | JZ_DMA_DCM_LINK;







  if (i != (periods - 1)) {
   desc->desc[i].dtc |=
    (((i + 1) * sizeof(*desc->desc)) >> 4) << 24;
  }
 }

 return vchan_tx_prep(&jzchan->vchan, &desc->vdesc, flags);
}
