
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct jz4780_dma_dev {TYPE_2__* soc_data; } ;
struct jz4780_dma_desc {int vdesc; TYPE_3__* desc; } ;
struct jz4780_dma_chan {int vchan; TYPE_1__* desc; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
struct TYPE_6__ {unsigned int dtc; int dcm; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int vdesc; } ;


 int DMA_SLAVE ;
 int JZ_DMA_DCM_LINK ;
 int JZ_DMA_DCM_TIE ;
 int JZ_SOC_DATA_BREAK_LINKS ;
 struct jz4780_dma_dev* jz4780_dma_chan_parent (struct jz4780_dma_chan*) ;
 struct jz4780_dma_desc* jz4780_dma_desc_alloc (struct jz4780_dma_chan*,unsigned int,int ) ;
 int jz4780_dma_desc_free (int *) ;
 int jz4780_dma_setup_hwdesc (struct jz4780_dma_chan*,TYPE_3__*,int ,int ,int) ;
 int sg_dma_address (struct scatterlist*) ;
 int sg_dma_len (struct scatterlist*) ;
 struct jz4780_dma_chan* to_jz4780_dma_chan (struct dma_chan*) ;
 struct dma_async_tx_descriptor* vchan_tx_prep (int *,int *,unsigned long) ;

__attribute__((used)) static struct dma_async_tx_descriptor *jz4780_dma_prep_slave_sg(
 struct dma_chan *chan, struct scatterlist *sgl, unsigned int sg_len,
 enum dma_transfer_direction direction, unsigned long flags,
 void *context)
{
 struct jz4780_dma_chan *jzchan = to_jz4780_dma_chan(chan);
 struct jz4780_dma_dev *jzdma = jz4780_dma_chan_parent(jzchan);
 struct jz4780_dma_desc *desc;
 unsigned int i;
 int err;

 desc = jz4780_dma_desc_alloc(jzchan, sg_len, DMA_SLAVE);
 if (!desc)
  return ((void*)0);

 for (i = 0; i < sg_len; i++) {
  err = jz4780_dma_setup_hwdesc(jzchan, &desc->desc[i],
           sg_dma_address(&sgl[i]),
           sg_dma_len(&sgl[i]),
           direction);
  if (err < 0) {
   jz4780_dma_desc_free(&jzchan->desc->vdesc);
   return ((void*)0);
  }

  desc->desc[i].dcm |= JZ_DMA_DCM_TIE;

  if (i != (sg_len - 1) &&
      !(jzdma->soc_data->flags & JZ_SOC_DATA_BREAK_LINKS)) {

   desc->desc[i].dcm |= JZ_DMA_DCM_LINK;






   desc->desc[i].dtc |=
    (((i + 1) * sizeof(*desc->desc)) >> 4) << 24;
  }
 }

 return vchan_tx_prep(&jzchan->vchan, &desc->vdesc, flags);
}
