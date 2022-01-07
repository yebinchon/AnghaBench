
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int chan; } ;
struct tegra_adma_chan {unsigned int sreq_index; int sreq_reserved; int sreq_dir; TYPE_2__ vc; struct tegra_adma* tdma; } ;
struct tegra_adma {int dev; int rx_requests_reserved; int tx_requests_reserved; TYPE_1__* cdata; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
struct TYPE_3__ {unsigned int ch_req_max; } ;




 int EINVAL ;
 int dev_WARN (int ,char*,int ) ;
 int dev_err (int ,char*) ;
 int dma_chan_name (int *) ;
 int test_and_set_bit (unsigned int,int *) ;

__attribute__((used)) static int tegra_adma_request_alloc(struct tegra_adma_chan *tdc,
        enum dma_transfer_direction direction)
{
 struct tegra_adma *tdma = tdc->tdma;
 unsigned int sreq_index = tdc->sreq_index;

 if (tdc->sreq_reserved)
  return tdc->sreq_dir == direction ? 0 : -EINVAL;

 if (sreq_index > tdma->cdata->ch_req_max) {
  dev_err(tdma->dev, "invalid DMA request\n");
  return -EINVAL;
 }

 switch (direction) {
 case 128:
  if (test_and_set_bit(sreq_index, &tdma->tx_requests_reserved)) {
   dev_err(tdma->dev, "DMA request reserved\n");
   return -EINVAL;
  }
  break;

 case 129:
  if (test_and_set_bit(sreq_index, &tdma->rx_requests_reserved)) {
   dev_err(tdma->dev, "DMA request reserved\n");
   return -EINVAL;
  }
  break;

 default:
  dev_WARN(tdma->dev, "channel %s has invalid transfer type\n",
    dma_chan_name(&tdc->vc.chan));
  return -EINVAL;
 }

 tdc->sreq_dir = direction;
 tdc->sreq_reserved = 1;

 return 0;
}
