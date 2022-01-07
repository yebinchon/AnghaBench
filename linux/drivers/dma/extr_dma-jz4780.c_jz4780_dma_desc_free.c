
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chan; } ;
struct virt_dma_desc {TYPE_1__ tx; } ;
struct jz4780_dma_desc {int desc_phys; int desc; } ;
struct jz4780_dma_chan {int desc_pool; } ;


 int dma_pool_free (int ,int ,int ) ;
 int kfree (struct jz4780_dma_desc*) ;
 struct jz4780_dma_chan* to_jz4780_dma_chan (int ) ;
 struct jz4780_dma_desc* to_jz4780_dma_desc (struct virt_dma_desc*) ;

__attribute__((used)) static void jz4780_dma_desc_free(struct virt_dma_desc *vdesc)
{
 struct jz4780_dma_desc *desc = to_jz4780_dma_desc(vdesc);
 struct jz4780_dma_chan *jzchan = to_jz4780_dma_chan(vdesc->tx.chan);

 dma_pool_free(jzchan->desc_pool, desc->desc, desc->desc_phys);
 kfree(desc);
}
