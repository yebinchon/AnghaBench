
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int device; } ;
struct TYPE_5__ {TYPE_1__ chan; } ;
struct owl_dma_vchan {struct owl_dma_pchan* pchan; TYPE_2__ vc; } ;
struct owl_dma_pchan {int id; } ;
struct TYPE_6__ {int dev; } ;
struct owl_dma {TYPE_3__ dma; } ;


 int dev_dbg (int ,char*,int ) ;
 struct owl_dma_pchan* owl_dma_get_pchan (struct owl_dma*,struct owl_dma_vchan*) ;
 int owl_dma_start_next_txd (struct owl_dma_vchan*) ;
 struct owl_dma* to_owl_dma (int ) ;

__attribute__((used)) static void owl_dma_phy_alloc_and_start(struct owl_dma_vchan *vchan)
{
 struct owl_dma *od = to_owl_dma(vchan->vc.chan.device);
 struct owl_dma_pchan *pchan;

 pchan = owl_dma_get_pchan(od, vchan);
 if (!pchan)
  return;

 dev_dbg(od->dma.dev, "allocated pchan %d\n", pchan->id);

 vchan->pchan = pchan;
 owl_dma_start_next_txd(vchan);
}
