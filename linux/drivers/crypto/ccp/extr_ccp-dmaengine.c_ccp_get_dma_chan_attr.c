
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccp_device {TYPE_1__* vdata; int dev; } ;
struct TYPE_2__ {unsigned int dma_chan_attr; } ;





 unsigned int DMA_PRIVATE ;
 int dev_info_once (int ,char*,int) ;
 int dma_chan_attr ;

__attribute__((used)) static unsigned int ccp_get_dma_chan_attr(struct ccp_device *ccp)
{
 switch (dma_chan_attr) {
 case 130:
  return ccp->vdata->dma_chan_attr;

 case 129:
  return DMA_PRIVATE;

 case 128:
  return 0;

 default:
  dev_info_once(ccp->dev, "Invalid value for dma_chan_attr: %d\n",
         dma_chan_attr);
  return ccp->vdata->dma_chan_attr;
 }
}
