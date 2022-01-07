
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_instmem {int subdev; } ;
struct TYPE_5__ {int pgshift; scalar_t__ domain; int mm; int mutex; } ;
struct nvkm_device_tegra {TYPE_3__* func; TYPE_2__ iommu; } ;
struct nvkm_device {TYPE_1__* func; } ;
struct gk20a_instmem {int vaddr_max; int attrs; struct nvkm_instmem base; int iommu_bit; int iommu_pgshift; scalar_t__ domain; int * mm; int * mm_mutex; int vaddr_lru; scalar_t__ vaddr_use; int lock; } ;
struct TYPE_6__ {int iommu_bit; } ;
struct TYPE_4__ {struct nvkm_device_tegra* (* tegra ) (struct nvkm_device*) ;} ;


 int DMA_ATTR_NON_CONSISTENT ;
 int DMA_ATTR_WEAK_ORDERING ;
 int DMA_ATTR_WRITE_COMBINE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int gk20a_instmem ;
 struct gk20a_instmem* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int nvkm_info (int *,char*) ;
 int nvkm_instmem_ctor (int *,struct nvkm_device*,int,struct nvkm_instmem*) ;
 struct nvkm_device_tegra* stub1 (struct nvkm_device*) ;

int
gk20a_instmem_new(struct nvkm_device *device, int index,
    struct nvkm_instmem **pimem)
{
 struct nvkm_device_tegra *tdev = device->func->tegra(device);
 struct gk20a_instmem *imem;

 if (!(imem = kzalloc(sizeof(*imem), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_instmem_ctor(&gk20a_instmem, device, index, &imem->base);
 mutex_init(&imem->lock);
 *pimem = &imem->base;


 imem->vaddr_use = 0;
 imem->vaddr_max = 0x100000;
 INIT_LIST_HEAD(&imem->vaddr_lru);

 if (tdev->iommu.domain) {
  imem->mm_mutex = &tdev->iommu.mutex;
  imem->mm = &tdev->iommu.mm;
  imem->domain = tdev->iommu.domain;
  imem->iommu_pgshift = tdev->iommu.pgshift;
  imem->iommu_bit = tdev->func->iommu_bit;

  nvkm_info(&imem->base.subdev, "using IOMMU\n");
 } else {
  imem->attrs = DMA_ATTR_NON_CONSISTENT |
         DMA_ATTR_WEAK_ORDERING |
         DMA_ATTR_WRITE_COMBINE;

  nvkm_info(&imem->base.subdev, "using DMA API\n");
 }

 return 0;
}
