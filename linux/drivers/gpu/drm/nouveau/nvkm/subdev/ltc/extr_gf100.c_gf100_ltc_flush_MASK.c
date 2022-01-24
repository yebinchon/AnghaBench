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
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_ltc {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct nvkm_device*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int,int) ; 

void
FUNC3(struct nvkm_ltc *ltc)
{
	struct nvkm_device *device = ltc->subdev.device;
	s64 taken;

	FUNC2(device, 0x70010, 0x00000001);
	taken = FUNC1(device, 2000, 0x70010, 0x00000003, 0x00000000);

	if (taken > 0)
		FUNC0(&ltc->subdev, "LTC flush took %lld ns\n", taken);
}