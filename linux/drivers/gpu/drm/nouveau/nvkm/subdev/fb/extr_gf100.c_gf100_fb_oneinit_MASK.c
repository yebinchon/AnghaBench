#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nvkm_fb {int dummy; } ;
struct nvkm_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  cfgopt; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {int page; int /*<<< orphan*/  mmu_wr; int /*<<< orphan*/  mmu_rd; TYPE_1__ subdev; } ;
struct gf100_fb {int /*<<< orphan*/  r100c10; scalar_t__ r100c10_page; TYPE_2__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int EFAULT ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  NVKM_MEM_TARGET_INST ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gf100_fb* FUNC3 (struct nvkm_fb*) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (struct nvkm_device*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 

int
FUNC7(struct nvkm_fb *base)
{
	struct gf100_fb *fb = FUNC3(base);
	struct nvkm_device *device = fb->base.subdev.device;
	int ret, size = 1 << (fb->base.page ? fb->base.page : 17);

	size = FUNC5(device->cfgopt, "MmuDebugBufferSize", size);
	size = FUNC4(size, 0x1000);

	ret = FUNC6(device, NVKM_MEM_TARGET_INST, size, 0x1000,
			      true, &fb->base.mmu_rd);
	if (ret)
		return ret;

	ret = FUNC6(device, NVKM_MEM_TARGET_INST, size, 0x1000,
			      true, &fb->base.mmu_wr);
	if (ret)
		return ret;

	fb->r100c10_page = FUNC0(GFP_KERNEL | __GFP_ZERO);
	if (fb->r100c10_page) {
		fb->r100c10 = FUNC1(device->dev, fb->r100c10_page, 0,
					   PAGE_SIZE, DMA_BIDIRECTIONAL);
		if (FUNC2(device->dev, fb->r100c10))
			return -EFAULT;
	}

	return 0;
}