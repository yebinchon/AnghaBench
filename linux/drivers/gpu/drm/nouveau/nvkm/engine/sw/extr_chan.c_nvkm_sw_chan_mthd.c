
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_sw_chan {TYPE_1__* func; int event; } ;
struct TYPE_2__ {int (* mthd ) (struct nvkm_sw_chan*,int,int,int) ;} ;


 int nvkm_event_send (int *,int,int ,int *,int ) ;
 int stub1 (struct nvkm_sw_chan*,int,int,int) ;

bool
nvkm_sw_chan_mthd(struct nvkm_sw_chan *chan, int subc, u32 mthd, u32 data)
{
 switch (mthd) {
 case 0x0000:
  return 1;
 case 0x0500:
  nvkm_event_send(&chan->event, 1, 0, ((void*)0), 0);
  return 1;
 default:
  if (chan->func->mthd)
   return chan->func->mthd(chan, subc, mthd, data);
  break;
 }
 return 0;
}
