
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_dma_desc {unsigned int count; int type; int desc; int desc_phys; } ;
struct jz4780_dma_chan {int desc_pool; } ;
typedef enum dma_transaction_type { ____Placeholder_dma_transaction_type } dma_transaction_type ;


 int GFP_NOWAIT ;
 unsigned int JZ_DMA_MAX_DESC ;
 int dma_pool_alloc (int ,int ,int *) ;
 int kfree (struct jz4780_dma_desc*) ;
 struct jz4780_dma_desc* kzalloc (int,int ) ;

__attribute__((used)) static struct jz4780_dma_desc *jz4780_dma_desc_alloc(
 struct jz4780_dma_chan *jzchan, unsigned int count,
 enum dma_transaction_type type)
{
 struct jz4780_dma_desc *desc;

 if (count > JZ_DMA_MAX_DESC)
  return ((void*)0);

 desc = kzalloc(sizeof(*desc), GFP_NOWAIT);
 if (!desc)
  return ((void*)0);

 desc->desc = dma_pool_alloc(jzchan->desc_pool, GFP_NOWAIT,
        &desc->desc_phys);
 if (!desc->desc) {
  kfree(desc);
  return ((void*)0);
 }

 desc->count = count;
 desc->type = type;
 return desc;
}
