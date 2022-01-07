
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int oclass; } ;
struct nvkm_oclass {TYPE_4__ base; } ;
struct nvkm_dmaobj {int target; int access; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct nvkm_dma {TYPE_2__ engine; } ;
struct nvkm_device {TYPE_3__* mmu; } ;
struct nv04_dmaobj {int clone; int flags0; int flags2; struct nvkm_dmaobj base; } ;
struct TYPE_7__ {int * func; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;





 int NV_MEM_TARGET_VM ;

 struct nv04_dmaobj* kzalloc (int,int ) ;
 int nv04_dmaobj_func ;
 int nv04_mmu ;
 int nvkm_dmaobj_ctor (int *,struct nvkm_dma*,struct nvkm_oclass const*,void**,int *,struct nvkm_dmaobj*) ;

int
nv04_dmaobj_new(struct nvkm_dma *dma, const struct nvkm_oclass *oclass,
  void *data, u32 size, struct nvkm_dmaobj **pdmaobj)
{
 struct nvkm_device *device = dma->engine.subdev.device;
 struct nv04_dmaobj *dmaobj;
 int ret;

 if (!(dmaobj = kzalloc(sizeof(*dmaobj), GFP_KERNEL)))
  return -ENOMEM;
 *pdmaobj = &dmaobj->base;

 ret = nvkm_dmaobj_ctor(&nv04_dmaobj_func, dma, oclass,
          &data, &size, &dmaobj->base);
 if (ret)
  return ret;

 if (dmaobj->base.target == NV_MEM_TARGET_VM) {
  if (device->mmu->func == &nv04_mmu)
   dmaobj->clone = 1;
  dmaobj->base.target = 130;
  dmaobj->base.access = 132;
 }

 dmaobj->flags0 = oclass->base.oclass;
 switch (dmaobj->base.target) {
 case 128:
  dmaobj->flags0 |= 0x00003000;
  break;
 case 130:
  dmaobj->flags0 |= 0x00023000;
  break;
 case 129:
  dmaobj->flags0 |= 0x00033000;
  break;
 default:
  return -EINVAL;
 }

 switch (dmaobj->base.access) {
 case 133:
  dmaobj->flags0 |= 0x00004000;
  break;
 case 131:
  dmaobj->flags0 |= 0x00008000;

 case 132:
  dmaobj->flags2 |= 0x00000002;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
