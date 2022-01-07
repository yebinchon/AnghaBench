
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_chan; } ;
struct TYPE_3__ {int dev; } ;
struct pl330_dmac {int mcbufsz; int mcode_bus; int mcode_cpu; TYPE_2__ pcfg; TYPE_1__ ddma; int tasks; int state; } ;


 int DMA_ATTR_PRIVILEGED ;
 int UNINIT ;
 int dma_free_attrs (int ,int,int ,int ,int ) ;
 int dmac_free_threads (struct pl330_dmac*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void pl330_del(struct pl330_dmac *pl330)
{
 pl330->state = UNINIT;

 tasklet_kill(&pl330->tasks);


 dmac_free_threads(pl330);

 dma_free_attrs(pl330->ddma.dev,
  pl330->pcfg.num_chan * pl330->mcbufsz, pl330->mcode_cpu,
  pl330->mcode_bus, DMA_ATTR_PRIVILEGED);
}
