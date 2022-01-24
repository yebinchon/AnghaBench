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
struct nvkm_ram {int dummy; } ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_fb {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVKM_RAM_TYPE_UNKNOWN ; 
 int /*<<< orphan*/  nv04_ram_func ; 
 int FUNC0 (int /*<<< orphan*/ *,struct nvkm_fb*,int /*<<< orphan*/ ,int,struct nvkm_ram**) ; 
 int FUNC1 (struct nvkm_device*,int) ; 

int
FUNC2(struct nvkm_fb *fb, struct nvkm_ram **pram)
{
	struct nvkm_device *device = fb->subdev.device;
	u32 size = FUNC1(device, 0x10020c) & 0xff000000;
	return FUNC0(&nv04_ram_func, fb, NVKM_RAM_TYPE_UNKNOWN,
			     size, pram);
}