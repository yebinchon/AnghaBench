
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dst_maxburst; int src_maxburst; } ;
struct dw_dma_chan {TYPE_1__ dma_sconfig; } ;
struct dw_dma {int (* encode_maxburst ) (struct dw_dma_chan*,int *) ;} ;
struct dma_slave_config {int dummy; } ;
struct dma_chan {int device; } ;


 int memcpy (TYPE_1__*,struct dma_slave_config*,int) ;
 int stub1 (struct dw_dma_chan*,int *) ;
 int stub2 (struct dw_dma_chan*,int *) ;
 struct dw_dma* to_dw_dma (int ) ;
 struct dw_dma_chan* to_dw_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int dwc_config(struct dma_chan *chan, struct dma_slave_config *sconfig)
{
 struct dw_dma_chan *dwc = to_dw_dma_chan(chan);
 struct dw_dma *dw = to_dw_dma(chan->device);

 memcpy(&dwc->dma_sconfig, sconfig, sizeof(*sconfig));

 dw->encode_maxburst(dwc, &dwc->dma_sconfig.src_maxburst);
 dw->encode_maxburst(dwc, &dwc->dma_sconfig.dst_maxburst);

 return 0;
}
