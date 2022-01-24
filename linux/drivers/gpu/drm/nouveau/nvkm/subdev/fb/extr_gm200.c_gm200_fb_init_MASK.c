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
typedef  int /*<<< orphan*/  u64 ;
struct nvkm_fb {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {int /*<<< orphan*/  mmu_rd; int /*<<< orphan*/  mmu_wr; TYPE_1__ subdev; } ;
struct gf100_fb {int r100c10; TYPE_2__ base; scalar_t__ r100c10_page; } ;

/* Variables and functions */
 struct gf100_fb* FUNC0 (struct nvkm_fb*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_device*,int,int) ; 

void
FUNC6(struct nvkm_fb *base)
{
	struct gf100_fb *fb = FUNC0(base);
	struct nvkm_device *device = fb->base.subdev.device;

	if (fb->r100c10_page)
		FUNC5(device, 0x100c10, fb->r100c10 >> 8);

	FUNC5(device, 0x100cc8, FUNC3(fb->base.mmu_wr) >> 8);
	FUNC5(device, 0x100ccc, FUNC3(fb->base.mmu_rd) >> 8);
	FUNC2(device, 0x100cc4, 0x00060000,
		  FUNC1(FUNC4(fb->base.mmu_rd) >> 16, (u64)2) << 17);
}