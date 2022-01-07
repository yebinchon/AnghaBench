
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {int device; } ;
struct TYPE_2__ {int phys; int tx_submit; } ;
struct at_xdmac_desc {TYPE_1__ tx_dma_desc; int descs_list; } ;
struct at_xdmac {int at_xdmac_desc_pool; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int INIT_LIST_HEAD (int *) ;
 int at_xdmac_tx_submit ;
 int dma_async_tx_descriptor_init (TYPE_1__*,struct dma_chan*) ;
 struct at_xdmac_desc* dma_pool_zalloc (int ,int ,int *) ;
 struct at_xdmac* to_at_xdmac (int ) ;

__attribute__((used)) static struct at_xdmac_desc *at_xdmac_alloc_desc(struct dma_chan *chan,
       gfp_t gfp_flags)
{
 struct at_xdmac_desc *desc;
 struct at_xdmac *atxdmac = to_at_xdmac(chan->device);
 dma_addr_t phys;

 desc = dma_pool_zalloc(atxdmac->at_xdmac_desc_pool, gfp_flags, &phys);
 if (desc) {
  INIT_LIST_HEAD(&desc->descs_list);
  dma_async_tx_descriptor_init(&desc->tx_dma_desc, chan);
  desc->tx_dma_desc.tx_submit = at_xdmac_tx_submit;
  desc->tx_dma_desc.phys = phys;
 }

 return desc;
}
