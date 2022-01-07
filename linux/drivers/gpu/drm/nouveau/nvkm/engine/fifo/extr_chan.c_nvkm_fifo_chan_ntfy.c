
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_fifo_chan {TYPE_1__* func; } ;
struct nvkm_event {int dummy; } ;
struct TYPE_2__ {int (* ntfy ) (struct nvkm_fifo_chan*,int ,struct nvkm_event**) ;} ;


 int ENODEV ;
 struct nvkm_fifo_chan* nvkm_fifo_chan (struct nvkm_object*) ;
 int stub1 (struct nvkm_fifo_chan*,int ,struct nvkm_event**) ;

__attribute__((used)) static int
nvkm_fifo_chan_ntfy(struct nvkm_object *object, u32 type,
      struct nvkm_event **pevent)
{
 struct nvkm_fifo_chan *chan = nvkm_fifo_chan(object);
 if (chan->func->ntfy)
  return chan->func->ntfy(chan, type, pevent);
 return -ENODEV;
}
