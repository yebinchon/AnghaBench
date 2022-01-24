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
 int /*<<< orphan*/  FUNC0 (struct nvkm_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int,int) ; 
 int FUNC2 (struct nvkm_therm*,int) ; 

int
FUNC3(struct nvkm_therm *therm, int line, u32 divs, u32 duty)
{
	struct nvkm_device *device = therm->subdev.device;
	int indx = FUNC2(therm, line);
	if (indx < 0)
		return indx;
	else if (indx < 2) {
		FUNC1(device, 0x00e114 + (indx * 8), divs);
		FUNC1(device, 0x00e118 + (indx * 8), duty | 0x80000000);
	} else if (indx == 2) {
		FUNC0(device, 0x0200d8, 0x1fff, divs); /* keep the high bits */
		FUNC1(device, 0x0200dc, duty | 0x40000000);
	}
	return 0;
}