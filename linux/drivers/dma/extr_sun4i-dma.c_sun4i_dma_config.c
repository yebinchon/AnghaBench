
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_dma_vchan {int cfg; } ;
struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;


 int memcpy (int *,struct dma_slave_config*,int) ;
 struct sun4i_dma_vchan* to_sun4i_dma_vchan (struct dma_chan*) ;

__attribute__((used)) static int sun4i_dma_config(struct dma_chan *chan,
       struct dma_slave_config *config)
{
 struct sun4i_dma_vchan *vchan = to_sun4i_dma_vchan(chan);

 memcpy(&vchan->cfg, config, sizeof(*config));

 return 0;
}
