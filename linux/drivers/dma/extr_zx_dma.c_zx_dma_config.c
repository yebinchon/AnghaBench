
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_dma_chan {int slave_cfg; } ;
struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;


 int EINVAL ;
 int memcpy (int *,struct dma_slave_config*,int) ;
 struct zx_dma_chan* to_zx_chan (struct dma_chan*) ;

__attribute__((used)) static int zx_dma_config(struct dma_chan *chan,
    struct dma_slave_config *cfg)
{
 struct zx_dma_chan *c = to_zx_chan(chan);

 if (!cfg)
  return -EINVAL;

 memcpy(&c->slave_cfg, cfg, sizeof(*cfg));

 return 0;
}
