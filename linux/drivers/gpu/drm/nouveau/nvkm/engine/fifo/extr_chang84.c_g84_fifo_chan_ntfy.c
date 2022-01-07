
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_fifo_chan {TYPE_1__* fifo; } ;
struct nvkm_event {int dummy; } ;
struct TYPE_2__ {struct nvkm_event uevent; } ;


 int EINVAL ;


__attribute__((used)) static int
g84_fifo_chan_ntfy(struct nvkm_fifo_chan *chan, u32 type,
     struct nvkm_event **pevent)
{
 switch (type) {
 case 128:
  *pevent = &chan->fifo->uevent;
  return 0;
 default:
  break;
 }
 return -EINVAL;
}
