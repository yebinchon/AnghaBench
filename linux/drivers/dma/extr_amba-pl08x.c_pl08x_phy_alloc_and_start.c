
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pl08x_phy_chan {int id; } ;
struct pl08x_driver_data {TYPE_1__* adev; } ;
struct pl08x_dma_chan {int state; struct pl08x_phy_chan* phychan; int name; int waiting_at; struct pl08x_driver_data* host; } ;
struct TYPE_2__ {int dev; } ;


 int PL08X_CHAN_RUNNING ;
 int PL08X_CHAN_WAITING ;
 int dev_dbg (int *,char*,int ,...) ;
 int jiffies ;
 struct pl08x_phy_chan* pl08x_get_phy_channel (struct pl08x_driver_data*,struct pl08x_dma_chan*) ;
 int pl08x_start_next_txd (struct pl08x_dma_chan*) ;

__attribute__((used)) static void pl08x_phy_alloc_and_start(struct pl08x_dma_chan *plchan)
{
 struct pl08x_driver_data *pl08x = plchan->host;
 struct pl08x_phy_chan *ch;

 ch = pl08x_get_phy_channel(pl08x, plchan);
 if (!ch) {
  dev_dbg(&pl08x->adev->dev, "no physical channel available for xfer on %s\n", plchan->name);
  plchan->state = PL08X_CHAN_WAITING;
  plchan->waiting_at = jiffies;
  return;
 }

 dev_dbg(&pl08x->adev->dev, "allocated physical channel %d for xfer on %s\n",
  ch->id, plchan->name);

 plchan->phychan = ch;
 plchan->state = PL08X_CHAN_RUNNING;
 pl08x_start_next_txd(plchan);
}
