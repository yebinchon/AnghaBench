
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virt_dma_desc {int tx; int node; } ;
struct moxart_chan {scalar_t__ sgidx; int * desc; int vc; } ;
struct dma_chan {int dummy; } ;


 int list_del (int *) ;
 int moxart_dma_start_sg (struct moxart_chan*,int ) ;
 struct moxart_chan* to_moxart_dma_chan (struct dma_chan*) ;
 int * to_moxart_dma_desc (int *) ;
 struct virt_dma_desc* vchan_next_desc (int *) ;

__attribute__((used)) static void moxart_dma_start_desc(struct dma_chan *chan)
{
 struct moxart_chan *ch = to_moxart_dma_chan(chan);
 struct virt_dma_desc *vd;

 vd = vchan_next_desc(&ch->vc);

 if (!vd) {
  ch->desc = ((void*)0);
  return;
 }

 list_del(&vd->node);

 ch->desc = to_moxart_dma_desc(&vd->tx);
 ch->sgidx = 0;

 moxart_dma_start_sg(ch, 0);
}
