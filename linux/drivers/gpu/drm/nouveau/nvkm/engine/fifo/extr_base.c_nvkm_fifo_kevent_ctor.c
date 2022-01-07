
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_notify {int types; int index; scalar_t__ size; } ;
struct nvkm_fifo_chan {int chid; } ;


 int ENOSYS ;
 struct nvkm_fifo_chan* nvkm_fifo_chan (struct nvkm_object*) ;

__attribute__((used)) static int
nvkm_fifo_kevent_ctor(struct nvkm_object *object, void *data, u32 size,
        struct nvkm_notify *notify)
{
 struct nvkm_fifo_chan *chan = nvkm_fifo_chan(object);
 if (size == 0) {
  notify->size = 0;
  notify->types = 1;
  notify->index = chan->chid;
  return 0;
 }
 return -ENOSYS;
}
