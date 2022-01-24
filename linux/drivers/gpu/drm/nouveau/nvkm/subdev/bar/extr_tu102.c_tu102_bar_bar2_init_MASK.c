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
typedef  int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct nvkm_bar {TYPE_1__ subdev; } ;
struct gf100_bar {scalar_t__ bar2_halve; TYPE_2__* bar; } ;
struct TYPE_4__ {int /*<<< orphan*/  inst; } ;

/* Variables and functions */
 struct gf100_bar* FUNC0 (struct nvkm_bar*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static void
FUNC3(struct nvkm_bar *base)
{
	struct nvkm_device *device = base->subdev.device;
	struct gf100_bar *bar = FUNC0(base);
	u32 addr = FUNC1(bar->bar[0].inst) >> 12;
	if (bar->bar2_halve)
		addr |= 0x40000000;
	FUNC2(device, 0xb80f48, 0x80000000 | addr);
}