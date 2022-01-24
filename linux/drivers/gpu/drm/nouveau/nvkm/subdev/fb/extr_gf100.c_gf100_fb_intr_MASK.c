#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_fb {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct gf100_fb {TYPE_1__ base; } ;

/* Variables and functions */
 struct gf100_fb* FUNC0 (struct nvkm_fb*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_subdev*,char*) ; 
 int FUNC2 (struct nvkm_device*,int) ; 

void
FUNC3(struct nvkm_fb *base)
{
	struct gf100_fb *fb = FUNC0(base);
	struct nvkm_subdev *subdev = &fb->base.subdev;
	struct nvkm_device *device = subdev->device;
	u32 intr = FUNC2(device, 0x000100);
	if (intr & 0x08000000)
		FUNC1(subdev, "PFFB intr\n");
	if (intr & 0x00002000)
		FUNC1(subdev, "PBFB intr\n");
}