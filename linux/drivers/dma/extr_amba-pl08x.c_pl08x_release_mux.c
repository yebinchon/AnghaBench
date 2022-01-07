
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pl08x_platform_data {int (* put_xfer_signal ) (int ,int) ;} ;
struct pl08x_dma_chan {int signal; scalar_t__ mux_use; int cd; TYPE_1__* host; } ;
struct TYPE_2__ {struct pl08x_platform_data* pd; } ;


 int WARN_ON (int) ;
 int stub1 (int ,int) ;

__attribute__((used)) static void pl08x_release_mux(struct pl08x_dma_chan *plchan)
{
 const struct pl08x_platform_data *pd = plchan->host->pd;

 if (plchan->signal >= 0) {
  WARN_ON(plchan->mux_use == 0);

  if (--plchan->mux_use == 0 && pd->put_xfer_signal) {
   pd->put_xfer_signal(plchan->cd, plchan->signal);
   plchan->signal = -1;
  }
 }
}
