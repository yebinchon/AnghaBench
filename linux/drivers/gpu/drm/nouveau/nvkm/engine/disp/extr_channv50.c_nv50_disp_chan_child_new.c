
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_oclass {int handle; struct nvkm_device_oclass* priv; int parent; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_device_oclass {int (* ctor ) (struct nvkm_device*,struct nvkm_oclass const*,void*,int ,int *) ;} ;
struct nvkm_device {int dummy; } ;
struct TYPE_10__ {int object; struct nvkm_object base; } ;
struct nv50_disp_chan_object {scalar_t__ hash; TYPE_5__ oproxy; struct nv50_disp* disp; } ;
struct nv50_disp_chan {TYPE_4__* func; struct nv50_disp* disp; } ;
struct TYPE_6__ {struct nvkm_device* device; } ;
struct TYPE_7__ {TYPE_1__ subdev; } ;
struct TYPE_8__ {TYPE_2__ engine; } ;
struct nv50_disp {TYPE_3__ base; } ;
struct TYPE_9__ {scalar_t__ (* bind ) (struct nv50_disp_chan*,int ,int ) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nv50_disp_chan_object* kzalloc (int,int ) ;
 struct nv50_disp_chan* nv50_disp_chan (int ) ;
 int nv50_disp_chan_child_func_ ;
 int nvkm_oproxy_ctor (int *,struct nvkm_oclass const*,TYPE_5__*) ;
 int stub1 (struct nvkm_device*,struct nvkm_oclass const*,void*,int ,int *) ;
 scalar_t__ stub2 (struct nv50_disp_chan*,int ,int ) ;

__attribute__((used)) static int
nv50_disp_chan_child_new(const struct nvkm_oclass *oclass,
    void *argv, u32 argc, struct nvkm_object **pobject)
{
 struct nv50_disp_chan *chan = nv50_disp_chan(oclass->parent);
 struct nv50_disp *disp = chan->disp;
 struct nvkm_device *device = disp->base.engine.subdev.device;
 const struct nvkm_device_oclass *sclass = oclass->priv;
 struct nv50_disp_chan_object *object;
 int ret;

 if (!(object = kzalloc(sizeof(*object), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_oproxy_ctor(&nv50_disp_chan_child_func_, oclass, &object->oproxy);
 object->disp = disp;
 *pobject = &object->oproxy.base;

 ret = sclass->ctor(device, oclass, argv, argc, &object->oproxy.object);
 if (ret)
  return ret;

 object->hash = chan->func->bind(chan, object->oproxy.object,
           oclass->handle);
 if (object->hash < 0)
  return object->hash;

 return 0;
}
