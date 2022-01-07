
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int chan_id; } ;
struct TYPE_6__ {int lock; TYPE_1__ chan; } ;
struct st_fdma_chan {TYPE_2__ vchan; int * fdesc; TYPE_4__* fdev; } ;
struct dma_chan {int dummy; } ;
struct TYPE_7__ {int dev; } ;


 unsigned long FDMA_CMD_PAUSE (int) ;
 int FDMA_CMD_SET_OFST ;
 int LIST_HEAD (int ) ;
 int dev_dbg (int ,char*,int) ;
 int fdma_write (TYPE_4__*,unsigned long,int ) ;
 int head ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct st_fdma_chan* to_st_fdma_chan (struct dma_chan*) ;
 int vchan_dma_desc_free_list (TYPE_2__*,int *) ;
 int vchan_get_all_descriptors (TYPE_2__*,int *) ;

__attribute__((used)) static int st_fdma_terminate_all(struct dma_chan *chan)
{
 unsigned long flags;
 LIST_HEAD(head);
 struct st_fdma_chan *fchan = to_st_fdma_chan(chan);
 int ch_id = fchan->vchan.chan.chan_id;
 unsigned long cmd = FDMA_CMD_PAUSE(ch_id);

 dev_dbg(fchan->fdev->dev, "terminate chan:%d\n", ch_id);

 spin_lock_irqsave(&fchan->vchan.lock, flags);
 fdma_write(fchan->fdev, cmd, FDMA_CMD_SET_OFST);
 fchan->fdesc = ((void*)0);
 vchan_get_all_descriptors(&fchan->vchan, &head);
 spin_unlock_irqrestore(&fchan->vchan.lock, flags);
 vchan_dma_desc_free_list(&fchan->vchan, &head);

 return 0;
}
