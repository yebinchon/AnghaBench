
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idma64_chan {int vchan; } ;
struct dma_chan {int dummy; } ;


 struct idma64_chan* to_idma64_chan (struct dma_chan*) ;
 int vchan_synchronize (int *) ;

__attribute__((used)) static void idma64_synchronize(struct dma_chan *chan)
{
 struct idma64_chan *idma64c = to_idma64_chan(chan);

 vchan_synchronize(&idma64c->vchan);
}
