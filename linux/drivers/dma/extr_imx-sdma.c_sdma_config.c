
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdma_channel {scalar_t__ event_id0; scalar_t__ event_id1; TYPE_1__* sdma; int slave_config; } ;
struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {scalar_t__ num_events; } ;
struct TYPE_3__ {TYPE_2__* drvdata; } ;


 int EINVAL ;
 int memcpy (int *,struct dma_slave_config*,int) ;
 int sdma_event_enable (struct sdma_channel*,scalar_t__) ;
 struct sdma_channel* to_sdma_chan (struct dma_chan*) ;

__attribute__((used)) static int sdma_config(struct dma_chan *chan,
         struct dma_slave_config *dmaengine_cfg)
{
 struct sdma_channel *sdmac = to_sdma_chan(chan);

 memcpy(&sdmac->slave_config, dmaengine_cfg, sizeof(*dmaengine_cfg));


 if (sdmac->event_id0) {
  if (sdmac->event_id0 >= sdmac->sdma->drvdata->num_events)
   return -EINVAL;
  sdma_event_enable(sdmac, sdmac->event_id0);
 }

 if (sdmac->event_id1) {
  if (sdmac->event_id1 >= sdmac->sdma->drvdata->num_events)
   return -EINVAL;
  sdma_event_enable(sdmac, sdmac->event_id1);
 }

 return 0;
}
