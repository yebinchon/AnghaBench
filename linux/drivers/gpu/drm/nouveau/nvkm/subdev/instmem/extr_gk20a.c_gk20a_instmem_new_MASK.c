#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nvkm_instmem {int /*<<< orphan*/  subdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  pgshift; scalar_t__ domain; int /*<<< orphan*/  mm; int /*<<< orphan*/  mutex; } ;
struct nvkm_device_tegra {TYPE_3__* func; TYPE_2__ iommu; } ;
struct nvkm_device {TYPE_1__* func; } ;
struct gk20a_instmem {int vaddr_max; int attrs; struct nvkm_instmem base; int /*<<< orphan*/  iommu_bit; int /*<<< orphan*/  iommu_pgshift; scalar_t__ domain; int /*<<< orphan*/ * mm; int /*<<< orphan*/ * mm_mutex; int /*<<< orphan*/  vaddr_lru; scalar_t__ vaddr_use; int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  iommu_bit; } ;
struct TYPE_4__ {struct nvkm_device_tegra* (* tegra ) (struct nvkm_device*) ;} ;

/* Variables and functions */
 int DMA_ATTR_NON_CONSISTENT ; 
 int DMA_ATTR_WEAK_ORDERING ; 
 int DMA_ATTR_WRITE_COMBINE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gk20a_instmem ; 
 struct gk20a_instmem* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct nvkm_device*,int,struct nvkm_instmem*) ; 
 struct nvkm_device_tegra* FUNC5 (struct nvkm_device*) ; 

int
FUNC6(struct nvkm_device *device, int index,
		  struct nvkm_instmem **pimem)
{
	struct nvkm_device_tegra *tdev = device->func->tegra(device);
	struct gk20a_instmem *imem;

	if (!(imem = FUNC1(sizeof(*imem), GFP_KERNEL)))
		return -ENOMEM;
	FUNC4(&gk20a_instmem, device, index, &imem->base);
	FUNC2(&imem->lock);
	*pimem = &imem->base;

	/* do not allow more than 1MB of CPU-mapped instmem */
	imem->vaddr_use = 0;
	imem->vaddr_max = 0x100000;
	FUNC0(&imem->vaddr_lru);

	if (tdev->iommu.domain) {
		imem->mm_mutex = &tdev->iommu.mutex;
		imem->mm = &tdev->iommu.mm;
		imem->domain = tdev->iommu.domain;
		imem->iommu_pgshift = tdev->iommu.pgshift;
		imem->iommu_bit = tdev->func->iommu_bit;

		FUNC3(&imem->base.subdev, "using IOMMU\n");
	} else {
		imem->attrs = DMA_ATTR_NON_CONSISTENT |
			      DMA_ATTR_WEAK_ORDERING |
			      DMA_ATTR_WRITE_COMBINE;

		FUNC3(&imem->base.subdev, "using DMA API\n");
	}

	return 0;
}