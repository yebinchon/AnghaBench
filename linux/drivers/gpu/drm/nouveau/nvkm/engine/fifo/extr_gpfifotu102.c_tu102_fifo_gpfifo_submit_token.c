
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_fifo_chan {int dummy; } ;
struct TYPE_2__ {int chid; } ;
struct gk104_fifo_chan {int runl; TYPE_1__ base; } ;


 struct gk104_fifo_chan* gk104_fifo_chan (struct nvkm_fifo_chan*) ;

__attribute__((used)) static u32
tu102_fifo_gpfifo_submit_token(struct nvkm_fifo_chan *base)
{
 struct gk104_fifo_chan *chan = gk104_fifo_chan(base);
 return (chan->runl << 16) | chan->base.chid;
}
