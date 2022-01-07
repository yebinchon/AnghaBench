
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsldma_chan {int dummy; } ;
struct dma_chan {int dummy; } ;


 int EINVAL ;
 int fsl_chan_toggle_ext_start (struct fsldma_chan*,int) ;
 struct fsldma_chan* to_fsl_chan (struct dma_chan*) ;

int fsl_dma_external_start(struct dma_chan *dchan, int enable)
{
 struct fsldma_chan *chan;

 if (!dchan)
  return -EINVAL;

 chan = to_fsl_chan(dchan);

 fsl_chan_toggle_ext_start(chan, enable);
 return 0;
}
