
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct stm32_mdma_desc {int cyclic; int count; TYPE_2__* node; int vdesc; } ;
struct stm32_mdma_chan {int desc_pool; int vchan; TYPE_1__* desc; } ;
struct scatterlist {int dummy; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
struct TYPE_4__ {int hwdesc_phys; int hwdesc; } ;
struct TYPE_3__ {scalar_t__ cyclic; } ;


 int chan2dev (struct stm32_mdma_chan*) ;
 int dev_err (int ,char*) ;
 int dma_pool_free (int ,int ,int ) ;
 int kfree (struct stm32_mdma_desc*) ;
 struct stm32_mdma_desc* stm32_mdma_alloc_desc (struct stm32_mdma_chan*,int ) ;
 int stm32_mdma_setup_xfer (struct stm32_mdma_chan*,struct stm32_mdma_desc*,struct scatterlist*,int ,int) ;
 struct stm32_mdma_chan* to_stm32_mdma_chan (struct dma_chan*) ;
 struct dma_async_tx_descriptor* vchan_tx_prep (int *,int *,unsigned long) ;

__attribute__((used)) static struct dma_async_tx_descriptor *
stm32_mdma_prep_slave_sg(struct dma_chan *c, struct scatterlist *sgl,
    u32 sg_len, enum dma_transfer_direction direction,
    unsigned long flags, void *context)
{
 struct stm32_mdma_chan *chan = to_stm32_mdma_chan(c);
 struct stm32_mdma_desc *desc;
 int i, ret;






 if (chan->desc && chan->desc->cyclic) {
  dev_err(chan2dev(chan),
   "Request not allowed when dma in cyclic mode\n");
  return ((void*)0);
 }

 desc = stm32_mdma_alloc_desc(chan, sg_len);
 if (!desc)
  return ((void*)0);

 ret = stm32_mdma_setup_xfer(chan, desc, sgl, sg_len, direction);
 if (ret < 0)
  goto xfer_setup_err;

 desc->cyclic = 0;

 return vchan_tx_prep(&chan->vchan, &desc->vdesc, flags);

xfer_setup_err:
 for (i = 0; i < desc->count; i++)
  dma_pool_free(chan->desc_pool, desc->node[i].hwdesc,
         desc->node[i].hwdesc_phys);
 kfree(desc);
 return ((void*)0);
}
