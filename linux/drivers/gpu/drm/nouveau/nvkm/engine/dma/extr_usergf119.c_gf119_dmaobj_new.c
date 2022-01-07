
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_oclass {struct nvkm_object* parent; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_dmaobj {int target; } ;
struct nvkm_dma {int dummy; } ;
struct gf119_dmaobj {int flags0; struct nvkm_dmaobj base; } ;
struct gf119_dma_v0 {int page; int kind; int version; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENOSYS ;
 int GF119_DMA_V0_KIND_PITCH ;
 int GF119_DMA_V0_KIND_VM ;
 int GF119_DMA_V0_PAGE_LP ;
 int GF119_DMA_V0_PAGE_SP ;
 int GFP_KERNEL ;




 int gf119_dmaobj_func ;
 struct gf119_dmaobj* kzalloc (int,int ) ;
 int nvif_ioctl (struct nvkm_object*,char*,int,...) ;
 int nvif_unpack (int,void**,int*,struct gf119_dma_v0,int ,int ,int) ;
 int nvkm_dmaobj_ctor (int *,struct nvkm_dma*,struct nvkm_oclass const*,void**,int*,struct nvkm_dmaobj*) ;

int
gf119_dmaobj_new(struct nvkm_dma *dma, const struct nvkm_oclass *oclass,
   void *data, u32 size, struct nvkm_dmaobj **pdmaobj)
{
 union {
  struct gf119_dma_v0 v0;
 } *args;
 struct nvkm_object *parent = oclass->parent;
 struct gf119_dmaobj *dmaobj;
 u32 kind, page;
 int ret;

 if (!(dmaobj = kzalloc(sizeof(*dmaobj), GFP_KERNEL)))
  return -ENOMEM;
 *pdmaobj = &dmaobj->base;

 ret = nvkm_dmaobj_ctor(&gf119_dmaobj_func, dma, oclass,
          &data, &size, &dmaobj->base);
 if (ret)
  return ret;

 ret = -ENOSYS;
 args = data;

 nvif_ioctl(parent, "create gf119 dma size %d\n", size);
 if (!(ret = nvif_unpack(ret, &data, &size, args->v0, 0, 0, 0))) {
  nvif_ioctl(parent,
      "create gf100 dma vers %d page %d kind %02x\n",
      args->v0.version, args->v0.page, args->v0.kind);
  kind = args->v0.kind;
  page = args->v0.page;
 } else
 if (size == 0) {
  if (dmaobj->base.target != 129) {
   kind = GF119_DMA_V0_KIND_PITCH;
   page = GF119_DMA_V0_PAGE_SP;
  } else {
   kind = GF119_DMA_V0_KIND_VM;
   page = GF119_DMA_V0_PAGE_LP;
  }
 } else
  return ret;

 if (page > 1)
  return -EINVAL;
 dmaobj->flags0 = (kind << 20) | (page << 6);

 switch (dmaobj->base.target) {
 case 128:
  dmaobj->flags0 |= 0x00000009;
  break;
 case 129:
 case 131:
 case 130:





  break;
 default:
  return -EINVAL;
 }

 return 0;
}
