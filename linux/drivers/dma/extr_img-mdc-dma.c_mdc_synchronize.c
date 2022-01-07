
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdc_chan {int vc; } ;
struct dma_chan {int dummy; } ;


 struct mdc_chan* to_mdc_chan (struct dma_chan*) ;
 int vchan_synchronize (int *) ;

__attribute__((used)) static void mdc_synchronize(struct dma_chan *chan)
{
 struct mdc_chan *mchan = to_mdc_chan(chan);

 vchan_synchronize(&mchan->vc);
}
