
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int chan_id; } ;
struct TYPE_5__ {int lock; TYPE_1__ chan; } ;
struct st_fdma_chan {TYPE_2__ vchan; scalar_t__ fdesc; TYPE_3__* fdev; } ;
struct dma_chan {int dummy; } ;
struct TYPE_6__ {int dev; } ;


 unsigned long FDMA_CH_CMD_DATA_MASK ;
 int FDMA_CH_CMD_OFST ;
 int dev_dbg (int ,char*,int) ;
 unsigned long fchan_read (struct st_fdma_chan*,int ) ;
 int fchan_write (struct st_fdma_chan*,unsigned long,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct st_fdma_chan* to_st_fdma_chan (struct dma_chan*) ;

__attribute__((used)) static int st_fdma_resume(struct dma_chan *chan)
{
 unsigned long flags;
 unsigned long val;
 struct st_fdma_chan *fchan = to_st_fdma_chan(chan);
 int ch_id = fchan->vchan.chan.chan_id;

 dev_dbg(fchan->fdev->dev, "resume chan:%d\n", ch_id);

 spin_lock_irqsave(&fchan->vchan.lock, flags);
 if (fchan->fdesc) {
  val = fchan_read(fchan, FDMA_CH_CMD_OFST);
  val &= FDMA_CH_CMD_DATA_MASK;
  fchan_write(fchan, val, FDMA_CH_CMD_OFST);
 }
 spin_unlock_irqrestore(&fchan->vchan.lock, flags);

 return 0;
}
