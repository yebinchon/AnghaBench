
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_dma_vchan {int vc; } ;
struct dma_chan {int dummy; } ;


 struct sun4i_dma_vchan* to_sun4i_dma_vchan (struct dma_chan*) ;
 int vchan_free_chan_resources (int *) ;

__attribute__((used)) static void sun4i_dma_free_chan_resources(struct dma_chan *chan)
{
 struct sun4i_dma_vchan *vchan = to_sun4i_dma_vchan(chan);

 vchan_free_chan_resources(&vchan->vc);
}
