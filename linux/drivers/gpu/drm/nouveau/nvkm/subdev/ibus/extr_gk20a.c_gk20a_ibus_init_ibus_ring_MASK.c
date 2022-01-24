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
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(struct nvkm_subdev *ibus)
{
	struct nvkm_device *device = ibus->device;
	FUNC0(device, 0x137250, 0x3f, 0);

	FUNC0(device, 0x000200, 0x20, 0);
	FUNC3(20);
	FUNC0(device, 0x000200, 0x20, 0x20);

	FUNC2(device, 0x12004c, 0x4);
	FUNC2(device, 0x122204, 0x2);
	FUNC1(device, 0x122204);

	/*
	 * Bug: increase clock timeout to avoid operation failure at high
	 * gpcclk rate.
	 */
	FUNC2(device, 0x122354, 0x800);
	FUNC2(device, 0x128328, 0x800);
	FUNC2(device, 0x124320, 0x800);
}