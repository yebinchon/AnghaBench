#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_14__ {int size; int /*<<< orphan*/  cma; int /*<<< orphan*/  base; scalar_t__ bridge; } ;
struct nvkm_pci {TYPE_1__ agp; } ;
struct nvkm_device {TYPE_4__* func; struct nvkm_pci* pci; } ;
struct nvif_mmu {int dmabits; } ;
struct TYPE_12__ {int vram_available; int gart_available; } ;
struct TYPE_22__ {int type_vram; int /*<<< orphan*/  bdev; int /*<<< orphan*/  mtrr; } ;
struct TYPE_21__ {int size; scalar_t__ bridge; int /*<<< orphan*/  cma; int /*<<< orphan*/  base; } ;
struct TYPE_18__ {int limit; } ;
struct TYPE_19__ {TYPE_5__ vmm; } ;
struct TYPE_16__ {scalar_t__ family; int chipset; scalar_t__ platform; int ram_user; } ;
struct TYPE_13__ {TYPE_3__ info; } ;
struct TYPE_20__ {TYPE_6__ vmm; TYPE_11__ device; struct nvif_mmu mmu; } ;
struct nouveau_drm {TYPE_10__ gem; TYPE_9__ ttm; TYPE_8__ agp; TYPE_7__ client; struct drm_device* dev; } ;
struct drm_device {TYPE_2__* anon_inode; } ;
struct TYPE_17__ {int /*<<< orphan*/  (* resource_size ) (struct nvkm_device*,int) ;int /*<<< orphan*/  (* resource_addr ) (struct nvkm_device*,int) ;} ;
struct TYPE_15__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int ENOSYS ; 
 int NVIF_MEM_COMP ; 
 int NVIF_MEM_DISP ; 
 int NVIF_MEM_KIND ; 
 int NVIF_MEM_MAPPABLE ; 
 int NVIF_MEM_VRAM ; 
 scalar_t__ NV_DEVICE_INFO_V0_SOC ; 
 scalar_t__ NV_DEVICE_INFO_V0_TESLA ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_drm*,char*,int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  TTM_PL_TT ; 
 int /*<<< orphan*/  TTM_PL_VRAM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nouveau_bo_driver ; 
 int FUNC4 (struct nouveau_drm*,int) ; 
 int FUNC5 (struct nvif_mmu*,int) ; 
 struct nvkm_device* FUNC6 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct nvkm_device*,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int
FUNC13(struct nouveau_drm *drm)
{
	struct nvkm_device *device = FUNC6(&drm->client.device);
	struct nvkm_pci *pci = device->pci;
	struct nvif_mmu *mmu = &drm->client.mmu;
	struct drm_device *dev = drm->dev;
	int typei, ret;

	ret = FUNC4(drm, 0);
	if (ret)
		return ret;

	if (drm->client.device.info.family >= NV_DEVICE_INFO_V0_TESLA &&
	    drm->client.device.info.chipset != 0x50) {
		ret = FUNC4(drm, NVIF_MEM_KIND);
		if (ret)
			return ret;
	}

	if (drm->client.device.info.platform != NV_DEVICE_INFO_V0_SOC &&
	    drm->client.device.info.family >= NV_DEVICE_INFO_V0_TESLA) {
		typei = FUNC5(mmu, NVIF_MEM_VRAM | NVIF_MEM_MAPPABLE |
					   NVIF_MEM_KIND |
					   NVIF_MEM_COMP |
					   NVIF_MEM_DISP);
		if (typei < 0)
			return -ENOSYS;

		drm->ttm.type_vram = typei;
	} else {
		drm->ttm.type_vram = -1;
	}

	if (pci && pci->agp.bridge) {
		drm->agp.bridge = pci->agp.bridge;
		drm->agp.base = pci->agp.base;
		drm->agp.size = pci->agp.size;
		drm->agp.cma = pci->agp.cma;
	}

	ret = FUNC11(&drm->ttm.bdev,
				  &nouveau_bo_driver,
				  dev->anon_inode->i_mapping,
				  drm->client.mmu.dmabits <= 32 ? true : false);
	if (ret) {
		FUNC0(drm, "error initialising bo driver, %d\n", ret);
		return ret;
	}

	/* VRAM init */
	drm->gem.vram_available = drm->client.device.info.ram_user;

	FUNC2(device->func->resource_addr(device, 1),
				   device->func->resource_size(device, 1));

	ret = FUNC12(&drm->ttm.bdev, TTM_PL_VRAM,
			      drm->gem.vram_available >> PAGE_SHIFT);
	if (ret) {
		FUNC0(drm, "VRAM mm init failed, %d\n", ret);
		return ret;
	}

	drm->ttm.mtrr = FUNC3(device->func->resource_addr(device, 1),
					 device->func->resource_size(device, 1));

	/* GART init */
	if (!drm->agp.bridge) {
		drm->gem.gart_available = drm->client.vmm.vmm.limit;
	} else {
		drm->gem.gart_available = drm->agp.size;
	}

	ret = FUNC12(&drm->ttm.bdev, TTM_PL_TT,
			      drm->gem.gart_available >> PAGE_SHIFT);
	if (ret) {
		FUNC0(drm, "GART mm init failed, %d\n", ret);
		return ret;
	}

	FUNC1(drm, "VRAM: %d MiB\n", (u32)(drm->gem.vram_available >> 20));
	FUNC1(drm, "GART: %d MiB\n", (u32)(drm->gem.gart_available >> 20));
	return 0;
}