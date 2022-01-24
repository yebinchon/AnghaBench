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
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_therm {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct nvkm_device*,int) ; 
 int FUNC1 (struct nvkm_therm*,int*,int*,int*) ; 

int
FUNC2(struct nvkm_therm *therm, int line, u32 *divs, u32 *duty)
{
	struct nvkm_device *device = therm->subdev.device;
	int ctrl, id, ret = FUNC1(therm, &line, &ctrl, &id);
	if (ret)
		return ret;

	if (FUNC0(device, ctrl) & (1 << line)) {
		*divs = FUNC0(device, 0x00e114 + (id * 8));
		*duty = FUNC0(device, 0x00e118 + (id * 8));
		return 0;
	}

	return -EINVAL;
}