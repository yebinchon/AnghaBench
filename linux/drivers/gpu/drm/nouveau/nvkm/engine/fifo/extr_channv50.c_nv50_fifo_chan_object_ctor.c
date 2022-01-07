
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_object {int handle; TYPE_2__* engine; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct nv50_fifo_chan {int ramht; } ;
struct TYPE_3__ {int index; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;


 int EINVAL ;




 int WARN_ON (int) ;
 struct nv50_fifo_chan* nv50_fifo_chan (struct nvkm_fifo_chan*) ;
 int nvkm_ramht_insert (int ,struct nvkm_object*,int ,int,int,int) ;

__attribute__((used)) static int
nv50_fifo_chan_object_ctor(struct nvkm_fifo_chan *base,
      struct nvkm_object *object)
{
 struct nv50_fifo_chan *chan = nv50_fifo_chan(base);
 u32 handle = object->handle;
 u32 context;

 switch (object->engine->subdev.index) {
 case 131:
 case 128 : context = 0x00000000; break;
 case 130 : context = 0x00100000; break;
 case 129 : context = 0x00200000; break;
 default:
  WARN_ON(1);
  return -EINVAL;
 }

 return nvkm_ramht_insert(chan->ramht, object, 0, 4, handle, context);
}
