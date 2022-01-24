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
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_device {int dummy; } ;
struct nvbios_init {TYPE_1__* subdev; } ;
struct TYPE_2__ {struct nvkm_device* device; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvbios_init*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvbios_init*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct nvbios_init *init, u32 reg, u32 val)
{
	struct nvkm_device *device = init->subdev->device;
	reg = FUNC1(init, reg);
	if (reg != ~0 && FUNC0(init))
		FUNC2(device, reg, val);
}