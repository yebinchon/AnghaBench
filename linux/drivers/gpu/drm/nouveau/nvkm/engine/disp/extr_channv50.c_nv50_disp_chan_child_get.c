
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


struct nvkm_oclass {struct nvkm_device_oclass const* priv; int ctor; TYPE_8__* engine; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_device_oclass {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct nv50_disp_chan {TYPE_5__* func; TYPE_4__* disp; } ;
struct TYPE_16__ {TYPE_7__* func; } ;
struct TYPE_14__ {int (* sclass ) (struct nvkm_oclass*,int,struct nvkm_device_oclass const**) ;} ;
struct TYPE_15__ {TYPE_6__ base; } ;
struct TYPE_13__ {scalar_t__ bind; } ;
struct TYPE_9__ {struct nvkm_device* device; } ;
struct TYPE_10__ {TYPE_1__ subdev; } ;
struct TYPE_11__ {TYPE_2__ engine; } ;
struct TYPE_12__ {TYPE_3__ base; } ;


 int EINVAL ;
 int NVKM_ENGINE_DMAOBJ ;
 struct nv50_disp_chan* nv50_disp_chan (struct nvkm_object*) ;
 int nv50_disp_chan_child_new ;
 TYPE_8__* nvkm_device_engine (struct nvkm_device*,int ) ;
 int stub1 (struct nvkm_oclass*,int,struct nvkm_device_oclass const**) ;

__attribute__((used)) static int
nv50_disp_chan_child_get(struct nvkm_object *object, int index,
    struct nvkm_oclass *sclass)
{
 struct nv50_disp_chan *chan = nv50_disp_chan(object);
 struct nvkm_device *device = chan->disp->base.engine.subdev.device;
 const struct nvkm_device_oclass *oclass = ((void*)0);

 if (chan->func->bind)
  sclass->engine = nvkm_device_engine(device, NVKM_ENGINE_DMAOBJ);
 else
  sclass->engine = ((void*)0);

 if (sclass->engine && sclass->engine->func->base.sclass) {
  sclass->engine->func->base.sclass(sclass, index, &oclass);
  if (oclass) {
   sclass->ctor = nv50_disp_chan_child_new,
   sclass->priv = oclass;
   return 0;
  }
 }

 return -EINVAL;
}
