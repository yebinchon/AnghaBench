
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_object {int handle; TYPE_3__* engine; } ;
struct nvkm_instmem {int ramht; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct TYPE_12__ {int chid; } ;
struct nv04_fifo_chan {TYPE_8__* fifo; TYPE_4__ base; } ;
struct TYPE_13__ {int mutex; TYPE_1__* device; } ;
struct TYPE_14__ {TYPE_5__ subdev; } ;
struct TYPE_15__ {TYPE_6__ engine; } ;
struct TYPE_16__ {TYPE_7__ base; } ;
struct TYPE_10__ {int index; } ;
struct TYPE_11__ {TYPE_2__ subdev; } ;
struct TYPE_9__ {struct nvkm_instmem* imem; } ;


 int EINVAL ;




 int WARN_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nv04_fifo_chan* nv04_fifo_chan (struct nvkm_fifo_chan*) ;
 int nvkm_ramht_insert (int ,struct nvkm_object*,int,int,int,int) ;

__attribute__((used)) static int
nv04_fifo_dma_object_ctor(struct nvkm_fifo_chan *base,
     struct nvkm_object *object)
{
 struct nv04_fifo_chan *chan = nv04_fifo_chan(base);
 struct nvkm_instmem *imem = chan->fifo->base.engine.subdev.device->imem;
 u32 context = 0x80000000 | chan->base.chid << 24;
 u32 handle = object->handle;
 int hash;

 switch (object->engine->subdev.index) {
 case 131:
 case 128 : context |= 0x00000000; break;
 case 130 : context |= 0x00010000; break;
 case 129 : context |= 0x00020000; break;
 default:
  WARN_ON(1);
  return -EINVAL;
 }

 mutex_lock(&chan->fifo->base.engine.subdev.mutex);
 hash = nvkm_ramht_insert(imem->ramht, object, chan->base.chid, 4,
     handle, context);
 mutex_unlock(&chan->fifo->base.engine.subdev.mutex);
 return hash;
}
