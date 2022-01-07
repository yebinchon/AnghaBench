
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int oclass; } ;
struct nvkm_oclass {TYPE_1__ base; struct nvkm_object* parent; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_dmaobj {int target; int access; } ;
struct nvkm_dma {int dummy; } ;
struct nv50_dmaobj {int flags0; int flags5; struct nvkm_dmaobj base; } ;
struct nv50_dma_v0 {int priv; int part; int comp; int kind; int version; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 int NV50_DMA_V0_COMP_NONE ;
 int NV50_DMA_V0_COMP_VM ;
 int NV50_DMA_V0_KIND_PITCH ;
 int NV50_DMA_V0_KIND_VM ;
 int NV50_DMA_V0_PART_256 ;
 int NV50_DMA_V0_PART_VM ;
 int NV50_DMA_V0_PRIV_US ;
 int NV50_DMA_V0_PRIV_VM ;
 struct nv50_dmaobj* kzalloc (int,int ) ;
 int nv50_dmaobj_func ;
 int nvif_ioctl (struct nvkm_object*,char*,int,...) ;
 int nvif_unpack (int,void**,int*,struct nv50_dma_v0,int ,int ,int) ;
 int nvkm_dmaobj_ctor (int *,struct nvkm_dma*,struct nvkm_oclass const*,void**,int*,struct nvkm_dmaobj*) ;

int
nv50_dmaobj_new(struct nvkm_dma *dma, const struct nvkm_oclass *oclass,
  void *data, u32 size, struct nvkm_dmaobj **pdmaobj)
{
 union {
  struct nv50_dma_v0 v0;
 } *args;
 struct nvkm_object *parent = oclass->parent;
 struct nv50_dmaobj *dmaobj;
 u32 user, part, comp, kind;
 int ret;

 if (!(dmaobj = kzalloc(sizeof(*dmaobj), GFP_KERNEL)))
  return -ENOMEM;
 *pdmaobj = &dmaobj->base;

 ret = nvkm_dmaobj_ctor(&nv50_dmaobj_func, dma, oclass,
          &data, &size, &dmaobj->base);
 if (ret)
  return ret;

 ret = -ENOSYS;
 args = data;

 nvif_ioctl(parent, "create nv50 dma size %d\n", size);
 if (!(ret = nvif_unpack(ret, &data, &size, args->v0, 0, 0, 0))) {
  nvif_ioctl(parent, "create nv50 dma vers %d priv %d part %d "
       "comp %d kind %02x\n", args->v0.version,
      args->v0.priv, args->v0.part, args->v0.comp,
      args->v0.kind);
  user = args->v0.priv;
  part = args->v0.part;
  comp = args->v0.comp;
  kind = args->v0.kind;
 } else
 if (size == 0) {
  if (dmaobj->base.target != 129) {
   user = NV50_DMA_V0_PRIV_US;
   part = NV50_DMA_V0_PART_256;
   comp = NV50_DMA_V0_COMP_NONE;
   kind = NV50_DMA_V0_KIND_PITCH;
  } else {
   user = NV50_DMA_V0_PRIV_VM;
   part = NV50_DMA_V0_PART_VM;
   comp = NV50_DMA_V0_COMP_VM;
   kind = NV50_DMA_V0_KIND_VM;
  }
 } else
  return ret;

 if (user > 2 || part > 2 || comp > 3 || kind > 0x7f)
  return -EINVAL;
 dmaobj->flags0 = (comp << 29) | (kind << 22) | (user << 20) |
    oclass->base.oclass;
 dmaobj->flags5 = (part << 16);

 switch (dmaobj->base.target) {
 case 129:
  dmaobj->flags0 |= 0x00000000;
  break;
 case 128:
  dmaobj->flags0 |= 0x00010000;
  break;
 case 131:
  dmaobj->flags0 |= 0x00020000;
  break;
 case 130:
  dmaobj->flags0 |= 0x00030000;
  break;
 default:
  return -EINVAL;
 }

 switch (dmaobj->base.access) {
 case 133:
  break;
 case 135:
  dmaobj->flags0 |= 0x00040000;
  break;
 case 132:
 case 134:
  dmaobj->flags0 |= 0x00080000;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
