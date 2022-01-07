
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct pl330_dmac {int pcfg; int pool_lock; int desc_pool; } ;
struct TYPE_6__ {scalar_t__ cookie; } ;
struct TYPE_5__ {int * pcfg; } ;
struct dma_pl330_desc {TYPE_2__ txd; TYPE_1__ rqcfg; int peri; struct dma_pl330_chan* pchan; } ;
struct TYPE_7__ {int chan_id; int * private; } ;
struct dma_pl330_chan {TYPE_3__ chan; struct pl330_dmac* dmac; } ;


 int DEFINE_SPINLOCK (int ) ;
 int GFP_ATOMIC ;
 int LIST_HEAD (int ) ;
 int WARN_ON (int) ;
 int add_desc (int *,int *,int ,int) ;
 int async_tx_ack (TYPE_2__*) ;
 int dma_async_tx_descriptor_init (TYPE_2__*,TYPE_3__*) ;
 int list_empty (int *) ;
 int lock ;
 struct dma_pl330_desc* pluck_desc (int *,int *) ;
 int pool ;

__attribute__((used)) static struct dma_pl330_desc *pl330_get_desc(struct dma_pl330_chan *pch)
{
 struct pl330_dmac *pl330 = pch->dmac;
 u8 *peri_id = pch->chan.private;
 struct dma_pl330_desc *desc;


 desc = pluck_desc(&pl330->desc_pool, &pl330->pool_lock);


 if (!desc) {
  DEFINE_SPINLOCK(lock);
  LIST_HEAD(pool);

  if (!add_desc(&pool, &lock, GFP_ATOMIC, 1))
   return ((void*)0);

  desc = pluck_desc(&pool, &lock);
  WARN_ON(!desc || !list_empty(&pool));
 }


 desc->pchan = pch;
 desc->txd.cookie = 0;
 async_tx_ack(&desc->txd);

 desc->peri = peri_id ? pch->chan.chan_id : 0;
 desc->rqcfg.pcfg = &pch->dmac->pcfg;

 dma_async_tx_descriptor_init(&desc->txd, &pch->chan);

 return desc;
}
