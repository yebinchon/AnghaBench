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
struct nvkm_fb {int /*<<< orphan*/  mmu_rd; int /*<<< orphan*/  mmu_wr; } ;
struct nvkm_device {struct nvkm_fb* fb; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct gf100_gr {TYPE_3__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct gf100_gr *gr)
{
	struct nvkm_device *device = gr->base.engine.subdev.device;
	struct nvkm_fb *fb = device->fb;

	FUNC2(device, FUNC0(0x0880), 0x00000000);
	FUNC2(device, FUNC0(0x0890), 0x00000000);
	FUNC2(device, FUNC0(0x0894), 0x00000000);
	FUNC2(device, FUNC0(0x08b4), FUNC1(fb->mmu_wr) >> 8);
	FUNC2(device, FUNC0(0x08b8), FUNC1(fb->mmu_rd) >> 8);
}