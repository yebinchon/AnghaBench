
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl08x_dma_chan {void* cd; } ;
struct dma_chan {int dummy; } ;


 struct pl08x_dma_chan* to_pl08x_chan (struct dma_chan*) ;

__attribute__((used)) static bool pl08x_filter_fn(struct dma_chan *chan, void *chan_id)
{
 struct pl08x_dma_chan *plchan = to_pl08x_chan(chan);

 return plchan->cd == chan_id;
}
