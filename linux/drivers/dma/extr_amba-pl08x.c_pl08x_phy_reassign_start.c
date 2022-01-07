
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pl08x_phy_chan {struct pl08x_dma_chan* serving; int id; } ;
struct pl08x_driver_data {TYPE_1__* adev; } ;
struct pl08x_dma_chan {int state; struct pl08x_phy_chan* phychan; int name; struct pl08x_driver_data* host; } ;
struct TYPE_2__ {int dev; } ;


 int PL08X_CHAN_RUNNING ;
 int dev_dbg (int *,char*,int ,int ) ;
 int pl08x_start_next_txd (struct pl08x_dma_chan*) ;

__attribute__((used)) static void pl08x_phy_reassign_start(struct pl08x_phy_chan *ch,
 struct pl08x_dma_chan *plchan)
{
 struct pl08x_driver_data *pl08x = plchan->host;

 dev_dbg(&pl08x->adev->dev, "reassigned physical channel %d for xfer on %s\n",
  ch->id, plchan->name);






 ch->serving = plchan;
 plchan->phychan = ch;
 plchan->state = PL08X_CHAN_RUNNING;
 pl08x_start_next_txd(plchan);
}
