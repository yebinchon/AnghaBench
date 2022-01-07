
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_dma_dev {int dummy; } ;
struct jz4780_dma_chan {int id; int vchan; } ;
struct dma_chan {int dummy; } ;


 int jz4780_dma_chan_disable (struct jz4780_dma_dev*,int ) ;
 struct jz4780_dma_dev* jz4780_dma_chan_parent (struct jz4780_dma_chan*) ;
 struct jz4780_dma_chan* to_jz4780_dma_chan (struct dma_chan*) ;
 int vchan_synchronize (int *) ;

__attribute__((used)) static void jz4780_dma_synchronize(struct dma_chan *chan)
{
 struct jz4780_dma_chan *jzchan = to_jz4780_dma_chan(chan);
 struct jz4780_dma_dev *jzdma = jz4780_dma_chan_parent(jzchan);

 vchan_synchronize(&jzchan->vchan);
 jz4780_dma_chan_disable(jzdma, jzchan->id);
}
