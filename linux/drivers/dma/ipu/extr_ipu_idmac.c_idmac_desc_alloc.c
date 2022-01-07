
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_async_tx_descriptor {int tx_submit; } ;
struct idmac_tx_desc {int list; struct dma_async_tx_descriptor txd; } ;
struct TYPE_4__ {int device; } ;
struct idmac_channel {int n_tx_desc; int free_list; TYPE_2__ dma_chan; int queue; struct idmac_tx_desc* desc; } ;
struct idmac {int dummy; } ;
struct TYPE_3__ {int tasklet; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int array_size (int,int) ;
 int dma_async_tx_descriptor_init (struct dma_async_tx_descriptor*,TYPE_2__*) ;
 int idmac_tx_submit ;
 int list_add (int *,int *) ;
 int memset (struct dma_async_tx_descriptor*,int ,int) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;
 struct idmac* to_idmac (int ) ;
 TYPE_1__* to_ipu (struct idmac*) ;
 struct idmac_tx_desc* vmalloc (int ) ;

__attribute__((used)) static int idmac_desc_alloc(struct idmac_channel *ichan, int n)
{
 struct idmac_tx_desc *desc =
  vmalloc(array_size(n, sizeof(struct idmac_tx_desc)));
 struct idmac *idmac = to_idmac(ichan->dma_chan.device);

 if (!desc)
  return -ENOMEM;


 tasklet_disable(&to_ipu(idmac)->tasklet);

 ichan->n_tx_desc = n;
 ichan->desc = desc;
 INIT_LIST_HEAD(&ichan->queue);
 INIT_LIST_HEAD(&ichan->free_list);

 while (n--) {
  struct dma_async_tx_descriptor *txd = &desc->txd;

  memset(txd, 0, sizeof(*txd));
  dma_async_tx_descriptor_init(txd, &ichan->dma_chan);
  txd->tx_submit = idmac_tx_submit;

  list_add(&desc->list, &ichan->free_list);

  desc++;
 }

 tasklet_enable(&to_ipu(idmac)->tasklet);

 return 0;
}
