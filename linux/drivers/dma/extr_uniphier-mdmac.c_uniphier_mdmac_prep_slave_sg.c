
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virt_dma_chan {int dummy; } ;
struct uniphier_mdmac_desc {unsigned int sg_len; int dir; int vd; struct scatterlist* sgl; } ;
struct scatterlist {int dummy; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;


 int GFP_NOWAIT ;
 int is_slave_direction (int) ;
 struct uniphier_mdmac_desc* kzalloc (int,int ) ;
 struct virt_dma_chan* to_virt_chan (struct dma_chan*) ;
 struct dma_async_tx_descriptor* vchan_tx_prep (struct virt_dma_chan*,int *,unsigned long) ;

__attribute__((used)) static struct dma_async_tx_descriptor *
uniphier_mdmac_prep_slave_sg(struct dma_chan *chan, struct scatterlist *sgl,
        unsigned int sg_len,
        enum dma_transfer_direction direction,
        unsigned long flags, void *context)
{
 struct virt_dma_chan *vc = to_virt_chan(chan);
 struct uniphier_mdmac_desc *md;

 if (!is_slave_direction(direction))
  return ((void*)0);

 md = kzalloc(sizeof(*md), GFP_NOWAIT);
 if (!md)
  return ((void*)0);

 md->sgl = sgl;
 md->sg_len = sg_len;
 md->dir = direction;

 return vchan_tx_prep(vc, &md->vd, flags);
}
