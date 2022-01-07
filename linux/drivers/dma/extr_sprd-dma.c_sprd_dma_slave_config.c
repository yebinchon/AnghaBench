
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_slave_config {int dummy; } ;
struct sprd_dma_chn {struct dma_slave_config slave_cfg; } ;
struct dma_chan {int dummy; } ;


 int memcpy (struct dma_slave_config*,struct dma_slave_config*,int) ;
 struct sprd_dma_chn* to_sprd_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int sprd_dma_slave_config(struct dma_chan *chan,
     struct dma_slave_config *config)
{
 struct sprd_dma_chn *schan = to_sprd_dma_chan(chan);
 struct dma_slave_config *slave_cfg = &schan->slave_cfg;

 memcpy(slave_cfg, config, sizeof(*config));
 return 0;
}
