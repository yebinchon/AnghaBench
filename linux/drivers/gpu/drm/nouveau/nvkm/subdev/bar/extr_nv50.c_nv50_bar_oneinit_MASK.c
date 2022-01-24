#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct nvkm_device {TYPE_1__* func; } ;
struct nvkm_bar {int dummy; } ;
struct TYPE_13__ {int oneinit; int /*<<< orphan*/  debug; struct nvkm_device* device; } ;
struct TYPE_14__ {TYPE_2__ subdev; } ;
struct nv50_bar {int pgd_addr; TYPE_4__* bar1; TYPE_4__* mem; TYPE_5__* bar1_vmm; TYPE_3__ base; TYPE_4__* bar2; TYPE_5__* bar2_vmm; TYPE_4__* pgd; TYPE_4__* pad; } ;
struct lock_class_key {int dummy; } ;
struct TYPE_16__ {int /*<<< orphan*/  debug; int /*<<< orphan*/ * engref; } ;
struct TYPE_15__ {int /*<<< orphan*/  memory; } ;
struct TYPE_12__ {int (* resource_size ) (struct nvkm_device*,int) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 size_t NVKM_SUBDEV_BAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 struct nv50_bar* FUNC2 (struct nvkm_bar*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int FUNC5 (struct nvkm_device*,int,int,int,TYPE_4__*,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int FUNC7 (TYPE_5__*) ; 
 int FUNC8 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct nvkm_device*,int,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct lock_class_key*,char*,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int,int) ; 
 int FUNC11 (struct nvkm_device*,int) ; 
 int FUNC12 (struct nvkm_device*,int) ; 
 int FUNC13 (int) ; 

int
FUNC14(struct nvkm_bar *base)
{
	struct nv50_bar *bar = FUNC2(base);
	struct nvkm_device *device = bar->base.subdev.device;
	static struct lock_class_key bar1_lock;
	static struct lock_class_key bar2_lock;
	u64 start, limit, size;
	int ret;

	ret = FUNC5(device, 0x20000, 0, false, NULL, &bar->mem);
	if (ret)
		return ret;

	ret = FUNC5(device, bar->pgd_addr, 0, false, bar->mem,
			      &bar->pad);
	if (ret)
		return ret;

	ret = FUNC5(device, 0x4000, 0, false, bar->mem, &bar->pgd);
	if (ret)
		return ret;

	/* BAR2 */
	start = 0x0100000000ULL;
	size = device->func->resource_size(device, 3);
	if (!size)
		return -ENOMEM;
	limit = start + size;

	ret = FUNC9(device, start, limit-- - start, NULL, 0,
			   &bar2_lock, "bar2", &bar->bar2_vmm);
	if (ret)
		return ret;

	FUNC0(&bar->bar2_vmm->engref[NVKM_SUBDEV_BAR]);
	bar->bar2_vmm->debug = bar->base.subdev.debug;

	ret = FUNC7(bar->bar2_vmm);
	if (ret)
		return ret;

	ret = FUNC8(bar->bar2_vmm, bar->mem->memory);
	if (ret)
		return ret;

	ret = FUNC5(device, 24, 16, false, bar->mem, &bar->bar2);
	if (ret)
		return ret;

	FUNC6(bar->bar2);
	FUNC10(bar->bar2, 0x00, 0x7fc00000);
	FUNC10(bar->bar2, 0x04, FUNC1(limit));
	FUNC10(bar->bar2, 0x08, FUNC1(start));
	FUNC10(bar->bar2, 0x0c, FUNC13(limit) << 24 |
				   FUNC13(start));
	FUNC10(bar->bar2, 0x10, 0x00000000);
	FUNC10(bar->bar2, 0x14, 0x00000000);
	FUNC4(bar->bar2);

	bar->base.subdev.oneinit = true;
	FUNC3(device);

	/* BAR1 */
	start = 0x0000000000ULL;
	size = device->func->resource_size(device, 1);
	if (!size)
		return -ENOMEM;
	limit = start + size;

	ret = FUNC9(device, start, limit-- - start, NULL, 0,
			   &bar1_lock, "bar1", &bar->bar1_vmm);
	if (ret)
		return ret;

	FUNC0(&bar->bar1_vmm->engref[NVKM_SUBDEV_BAR]);
	bar->bar1_vmm->debug = bar->base.subdev.debug;

	ret = FUNC8(bar->bar1_vmm, bar->mem->memory);
	if (ret)
		return ret;

	ret = FUNC5(device, 24, 16, false, bar->mem, &bar->bar1);
	if (ret)
		return ret;

	FUNC6(bar->bar1);
	FUNC10(bar->bar1, 0x00, 0x7fc00000);
	FUNC10(bar->bar1, 0x04, FUNC1(limit));
	FUNC10(bar->bar1, 0x08, FUNC1(start));
	FUNC10(bar->bar1, 0x0c, FUNC13(limit) << 24 |
				   FUNC13(start));
	FUNC10(bar->bar1, 0x10, 0x00000000);
	FUNC10(bar->bar1, 0x14, 0x00000000);
	FUNC4(bar->bar1);
	return 0;
}