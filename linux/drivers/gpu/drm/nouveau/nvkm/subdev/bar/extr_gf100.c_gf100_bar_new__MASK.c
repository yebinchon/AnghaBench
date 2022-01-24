#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nvkm_device {int /*<<< orphan*/  cfgopt; } ;
struct nvkm_bar_func {int dummy; } ;
struct nvkm_bar {int dummy; } ;
struct gf100_bar {struct nvkm_bar base; int /*<<< orphan*/  bar2_halve; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct gf100_bar* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_bar_func const*,struct nvkm_device*,int,struct nvkm_bar*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC3(const struct nvkm_bar_func *func, struct nvkm_device *device,
	       int index, struct nvkm_bar **pbar)
{
	struct gf100_bar *bar;
	if (!(bar = FUNC0(sizeof(*bar), GFP_KERNEL)))
		return -ENOMEM;
	FUNC1(func, device, index, &bar->base);
	bar->bar2_halve = FUNC2(device->cfgopt, "NvBar2Halve", false);
	*pbar = &bar->base;
	return 0;
}