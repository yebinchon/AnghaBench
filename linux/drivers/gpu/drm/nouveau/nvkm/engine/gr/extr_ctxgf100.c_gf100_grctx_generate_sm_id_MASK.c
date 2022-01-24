#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct gf100_gr {TYPE_3__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(struct gf100_gr *gr, int gpc, int tpc, int sm)
{
	struct nvkm_device *device = gr->base.engine.subdev.device;
	FUNC2(device, FUNC1(gpc, tpc, 0x698), sm);
	FUNC2(device, FUNC1(gpc, tpc, 0x4e8), sm);
	FUNC2(device, FUNC0(gpc, 0x0c10 + tpc * 4), sm);
	FUNC2(device, FUNC1(gpc, tpc, 0x088), sm);
}