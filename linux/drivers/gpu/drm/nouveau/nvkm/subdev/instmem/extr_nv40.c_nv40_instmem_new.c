
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_instmem {int subdev; } ;
struct nvkm_device {TYPE_1__* func; } ;
struct nv40_instmem {struct nvkm_instmem base; int iomem; } ;
struct TYPE_2__ {int (* resource_size ) (struct nvkm_device*,int) ;int (* resource_addr ) (struct nvkm_device*,int) ;} ;


 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ioremap_wc (int ,int ) ;
 struct nv40_instmem* kzalloc (int,int ) ;
 int nv40_instmem ;
 int nvkm_error (int *,char*) ;
 int nvkm_instmem_ctor (int *,struct nvkm_device*,int,struct nvkm_instmem*) ;
 int stub1 (struct nvkm_device*,int) ;
 int stub2 (struct nvkm_device*,int) ;
 int stub3 (struct nvkm_device*,int) ;

int
nv40_instmem_new(struct nvkm_device *device, int index,
   struct nvkm_instmem **pimem)
{
 struct nv40_instmem *imem;
 int bar;

 if (!(imem = kzalloc(sizeof(*imem), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_instmem_ctor(&nv40_instmem, device, index, &imem->base);
 *pimem = &imem->base;


 if (device->func->resource_size(device, 2))
  bar = 2;
 else
  bar = 3;

 imem->iomem = ioremap_wc(device->func->resource_addr(device, bar),
     device->func->resource_size(device, bar));
 if (!imem->iomem) {
  nvkm_error(&imem->base.subdev, "unable to map PRAMIN BAR\n");
  return -EFAULT;
 }

 return 0;
}
