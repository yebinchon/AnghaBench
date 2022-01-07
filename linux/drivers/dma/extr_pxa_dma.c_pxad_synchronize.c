
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxad_chan {int vc; int wq_state; } ;
struct dma_chan {int dummy; } ;


 int is_chan_running (struct pxad_chan*) ;
 struct pxad_chan* to_pxad_chan (struct dma_chan*) ;
 int vchan_synchronize (int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void pxad_synchronize(struct dma_chan *dchan)
{
 struct pxad_chan *chan = to_pxad_chan(dchan);

 wait_event(chan->wq_state, !is_chan_running(chan));
 vchan_synchronize(&chan->vc);
}
