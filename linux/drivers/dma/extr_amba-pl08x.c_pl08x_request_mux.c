
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pl08x_platform_data {int (* get_xfer_signal ) (int ) ;} ;
struct pl08x_dma_chan {int signal; scalar_t__ mux_use; int cd; TYPE_1__* host; } ;
struct TYPE_2__ {struct pl08x_platform_data* pd; } ;


 int stub1 (int ) ;

__attribute__((used)) static int pl08x_request_mux(struct pl08x_dma_chan *plchan)
{
 const struct pl08x_platform_data *pd = plchan->host->pd;
 int ret;

 if (plchan->mux_use++ == 0 && pd->get_xfer_signal) {
  ret = pd->get_xfer_signal(plchan->cd);
  if (ret < 0) {
   plchan->mux_use = 0;
   return ret;
  }

  plchan->signal = ret;
 }
 return 0;
}
