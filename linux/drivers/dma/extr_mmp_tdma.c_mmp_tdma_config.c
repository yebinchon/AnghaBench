
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_tdma_chan {int slave_config; } ;
struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;


 int memcpy (int *,struct dma_slave_config*,int) ;
 struct mmp_tdma_chan* to_mmp_tdma_chan (struct dma_chan*) ;

__attribute__((used)) static int mmp_tdma_config(struct dma_chan *chan,
      struct dma_slave_config *dmaengine_cfg)
{
 struct mmp_tdma_chan *tdmac = to_mmp_tdma_chan(chan);

 memcpy(&tdmac->slave_config, dmaengine_cfg, sizeof(*dmaengine_cfg));

 return 0;
}
