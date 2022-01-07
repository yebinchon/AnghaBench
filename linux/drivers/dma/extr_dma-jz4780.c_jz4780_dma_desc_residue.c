
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jz4780_dma_dev {int dummy; } ;
struct jz4780_dma_desc {unsigned int count; TYPE_1__* desc; } ;
struct jz4780_dma_chan {unsigned int transfer_shift; int id; } ;
struct TYPE_2__ {unsigned int dtc; } ;


 unsigned int GENMASK (int,int ) ;
 int JZ_DMA_REG_DTC ;
 struct jz4780_dma_dev* jz4780_dma_chan_parent (struct jz4780_dma_chan*) ;
 scalar_t__ jz4780_dma_chn_readl (struct jz4780_dma_dev*,int ,int ) ;

__attribute__((used)) static size_t jz4780_dma_desc_residue(struct jz4780_dma_chan *jzchan,
 struct jz4780_dma_desc *desc, unsigned int next_sg)
{
 struct jz4780_dma_dev *jzdma = jz4780_dma_chan_parent(jzchan);
 unsigned int count = 0;
 unsigned int i;

 for (i = next_sg; i < desc->count; i++)
  count += desc->desc[i].dtc & GENMASK(23, 0);

 if (next_sg != 0)
  count += jz4780_dma_chn_readl(jzdma, jzchan->id,
      JZ_DMA_REG_DTC);

 return count << jzchan->transfer_shift;
}
