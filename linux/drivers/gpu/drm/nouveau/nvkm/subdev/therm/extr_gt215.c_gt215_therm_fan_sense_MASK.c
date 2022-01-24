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
 int ENODEV ; 
 int FUNC0 (struct nvkm_device*,int) ; 

int
FUNC1(struct nvkm_therm *therm)
{
	struct nvkm_device *device = therm->subdev.device;
	u32 tach = FUNC0(device, 0x00e728) & 0x0000ffff;
	u32 ctrl = FUNC0(device, 0x00e720);
	if (ctrl & 0x00000001)
		return tach * 60 / 2;
	return -ENODEV;
}