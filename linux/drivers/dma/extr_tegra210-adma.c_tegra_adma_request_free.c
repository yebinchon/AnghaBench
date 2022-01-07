
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chan; } ;
struct tegra_adma_chan {int sreq_reserved; int sreq_dir; TYPE_1__ vc; int sreq_index; struct tegra_adma* tdma; } ;
struct tegra_adma {int dev; int rx_requests_reserved; int tx_requests_reserved; } ;




 int clear_bit (int ,int *) ;
 int dev_WARN (int ,char*,int ) ;
 int dma_chan_name (int *) ;

__attribute__((used)) static void tegra_adma_request_free(struct tegra_adma_chan *tdc)
{
 struct tegra_adma *tdma = tdc->tdma;

 if (!tdc->sreq_reserved)
  return;

 switch (tdc->sreq_dir) {
 case 128:
  clear_bit(tdc->sreq_index, &tdma->tx_requests_reserved);
  break;

 case 129:
  clear_bit(tdc->sreq_index, &tdma->rx_requests_reserved);
  break;

 default:
  dev_WARN(tdma->dev, "channel %s has invalid transfer type\n",
    dma_chan_name(&tdc->vc.chan));
  return;
 }

 tdc->sreq_reserved = 0;
}
