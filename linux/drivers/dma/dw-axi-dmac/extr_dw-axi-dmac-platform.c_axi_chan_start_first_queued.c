
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cookie; } ;
struct virt_dma_desc {TYPE_1__ tx; } ;
struct axi_dma_desc {int dummy; } ;
struct axi_dma_chan {int vc; } ;


 int axi_chan_block_xfer_start (struct axi_dma_chan*,struct axi_dma_desc*) ;
 int axi_chan_name (struct axi_dma_chan*) ;
 int chan2dev (struct axi_dma_chan*) ;
 int dev_vdbg (int ,char*,int ,int ) ;
 struct virt_dma_desc* vchan_next_desc (int *) ;
 struct axi_dma_desc* vd_to_axi_desc (struct virt_dma_desc*) ;

__attribute__((used)) static void axi_chan_start_first_queued(struct axi_dma_chan *chan)
{
 struct axi_dma_desc *desc;
 struct virt_dma_desc *vd;

 vd = vchan_next_desc(&chan->vc);
 if (!vd)
  return;

 desc = vd_to_axi_desc(vd);
 dev_vdbg(chan2dev(chan), "%s: started %u\n", axi_chan_name(chan),
  vd->tx.cookie);
 axi_chan_block_xfer_start(chan, desc);
}
