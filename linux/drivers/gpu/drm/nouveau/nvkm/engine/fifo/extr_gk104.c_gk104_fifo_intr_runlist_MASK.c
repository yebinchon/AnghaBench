#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;
struct gk104_fifo {TYPE_4__* runlist; TYPE_3__ base; } ;
struct TYPE_8__ {int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct gk104_fifo *fifo)
{
	struct nvkm_device *device = fifo->base.engine.subdev.device;
	u32 mask = FUNC1(device, 0x002a00);
	while (mask) {
		int runl = FUNC0(mask);
		FUNC3(&fifo->runlist[runl].wait);
		FUNC2(device, 0x002a00, 1 << runl);
		mask &= ~(1 << runl);
	}
}