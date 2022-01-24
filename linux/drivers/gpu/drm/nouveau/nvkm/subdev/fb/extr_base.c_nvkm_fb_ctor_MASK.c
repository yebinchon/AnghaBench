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
struct TYPE_4__ {int /*<<< orphan*/  regions; } ;
struct nvkm_fb_func {int /*<<< orphan*/  default_bigpage; TYPE_2__ tile; } ;
struct TYPE_3__ {int /*<<< orphan*/  regions; } ;
struct nvkm_fb {struct nvkm_fb_func const* func; int /*<<< orphan*/  page; TYPE_1__ tile; int /*<<< orphan*/  subdev; } ;
struct nvkm_device {int /*<<< orphan*/  cfgopt; } ;

/* Variables and functions */
 int /*<<< orphan*/  nvkm_fb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nvkm_device*,int,int /*<<< orphan*/ *) ; 

void
FUNC2(const struct nvkm_fb_func *func, struct nvkm_device *device,
	     int index, struct nvkm_fb *fb)
{
	FUNC1(&nvkm_fb, device, index, &fb->subdev);
	fb->func = func;
	fb->tile.regions = fb->func->tile.regions;
	fb->page = FUNC0(device->cfgopt, "NvFbBigPage",
				fb->func->default_bigpage);
}