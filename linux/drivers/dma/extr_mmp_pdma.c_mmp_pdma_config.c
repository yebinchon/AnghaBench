
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_pdma_chan {int slave_config; } ;
struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;


 int memcpy (int *,struct dma_slave_config*,int) ;
 struct mmp_pdma_chan* to_mmp_pdma_chan (struct dma_chan*) ;

__attribute__((used)) static int mmp_pdma_config(struct dma_chan *dchan,
      struct dma_slave_config *cfg)
{
 struct mmp_pdma_chan *chan = to_mmp_pdma_chan(dchan);

 memcpy(&chan->slave_config, cfg, sizeof(*cfg));
 return 0;
}
