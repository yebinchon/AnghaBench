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
 int FUNC1 (struct nvkm_therm*,int) ; 

int
FUNC2(struct nvkm_therm *therm, int line, bool enable)
{
	struct nvkm_device *device = therm->subdev.device;
	u32 data = enable ? 0x00000040 : 0x00000000;
	int indx = FUNC1(therm, line);
	if (indx < 0)
		return indx;
	else if (indx < 2)
		FUNC0(device, 0x00d610 + (line * 0x04), 0x000000c0, data);
	/* nothing to do for indx == 2, it seems hardwired to PTHERM */
	return 0;
}