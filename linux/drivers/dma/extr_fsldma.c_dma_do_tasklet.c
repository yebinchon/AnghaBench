
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsldma_chan {int idle; int desc_lock; } ;


 int chan_dbg (struct fsldma_chan*,char*) ;
 int fsldma_cleanup_descriptors (struct fsldma_chan*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void dma_do_tasklet(unsigned long data)
{
 struct fsldma_chan *chan = (struct fsldma_chan *)data;

 chan_dbg(chan, "tasklet entry\n");

 spin_lock(&chan->desc_lock);


 chan->idle = 1;


 fsldma_cleanup_descriptors(chan);

 spin_unlock(&chan->desc_lock);

 chan_dbg(chan, "tasklet exit\n");
}
