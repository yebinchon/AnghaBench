
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_slave_config {int dummy; } ;
struct pxad_chan {struct dma_slave_config cfg; } ;
struct dma_chan {int dummy; } ;


 int EINVAL ;
 struct pxad_chan* to_pxad_chan (struct dma_chan*) ;

__attribute__((used)) static int pxad_config(struct dma_chan *dchan,
         struct dma_slave_config *cfg)
{
 struct pxad_chan *chan = to_pxad_chan(dchan);

 if (!dchan)
  return -EINVAL;

 chan->cfg = *cfg;
 return 0;
}
