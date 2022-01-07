
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chan; } ;
struct virt_dma_desc {TYPE_1__ tx; } ;
struct stm32_mdma_desc {int count; TYPE_2__* node; } ;
struct stm32_mdma_chan {int desc_pool; } ;
struct TYPE_4__ {int hwdesc_phys; int hwdesc; } ;


 int dma_pool_free (int ,int ,int ) ;
 int kfree (struct stm32_mdma_desc*) ;
 struct stm32_mdma_chan* to_stm32_mdma_chan (int ) ;
 struct stm32_mdma_desc* to_stm32_mdma_desc (struct virt_dma_desc*) ;

__attribute__((used)) static void stm32_mdma_desc_free(struct virt_dma_desc *vdesc)
{
 struct stm32_mdma_desc *desc = to_stm32_mdma_desc(vdesc);
 struct stm32_mdma_chan *chan = to_stm32_mdma_chan(vdesc->tx.chan);
 int i;

 for (i = 0; i < desc->count; i++)
  dma_pool_free(chan->desc_pool, desc->node[i].hwdesc,
         desc->node[i].hwdesc_phys);
 kfree(desc);
}
