
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;


 int mxs_dma_disable_chan (struct dma_chan*) ;
 int mxs_dma_reset_chan (struct dma_chan*) ;

__attribute__((used)) static int mxs_dma_terminate_all(struct dma_chan *chan)
{
 mxs_dma_reset_chan(chan);
 mxs_dma_disable_chan(chan);

 return 0;
}
