
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsu_dma_chan {int vchan; } ;
struct dma_chan {int dummy; } ;


 struct hsu_dma_chan* to_hsu_dma_chan (struct dma_chan*) ;
 int vchan_synchronize (int *) ;

__attribute__((used)) static void hsu_dma_synchronize(struct dma_chan *chan)
{
 struct hsu_dma_chan *hsuc = to_hsu_dma_chan(chan);

 vchan_synchronize(&hsuc->vchan);
}
