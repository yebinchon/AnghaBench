
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynqmp_dma_chan {int dst_burst_len; int src_burst_len; } ;
struct dma_slave_config {int dst_maxburst; int src_maxburst; } ;
struct dma_chan {int dummy; } ;


 struct zynqmp_dma_chan* to_chan (struct dma_chan*) ;

__attribute__((used)) static int zynqmp_dma_device_config(struct dma_chan *dchan,
        struct dma_slave_config *config)
{
 struct zynqmp_dma_chan *chan = to_chan(dchan);

 chan->src_burst_len = config->src_maxburst;
 chan->dst_burst_len = config->dst_maxburst;

 return 0;
}
