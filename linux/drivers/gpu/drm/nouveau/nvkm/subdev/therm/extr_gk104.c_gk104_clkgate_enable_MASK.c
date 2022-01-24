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
struct nvkm_therm {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct gk104_therm {TYPE_3__* idle_filter; struct gk104_clkgate_engine_info* clkgate_order; TYPE_2__ base; } ;
struct gk104_clkgate_engine_info {scalar_t__ engine; scalar_t__ offset; } ;
struct TYPE_6__ {int /*<<< orphan*/  hubmmu; int /*<<< orphan*/  fecs; } ;

/* Variables and functions */
 scalar_t__ NVKM_SUBDEV_NR ; 
 struct gk104_therm* FUNC0 (struct nvkm_therm*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int,int /*<<< orphan*/ ) ; 

void
FUNC4(struct nvkm_therm *base)
{
	struct gk104_therm *therm = FUNC0(base);
	struct nvkm_device *dev = therm->base.subdev.device;
	const struct gk104_clkgate_engine_info *order = therm->clkgate_order;
	int i;

	/* Program ENG_MANT, ENG_FILTER */
	for (i = 0; order[i].engine != NVKM_SUBDEV_NR; i++) {
		if (!FUNC1(dev, order[i].engine))
			continue;

		FUNC2(dev, 0x20200 + order[i].offset, 0xff00, 0x4500);
	}

	/* magic */
	FUNC3(dev, 0x020288, therm->idle_filter->fecs);
	FUNC3(dev, 0x02028c, therm->idle_filter->hubmmu);

	/* Enable clockgating (ENG_CLK = RUN->AUTO) */
	for (i = 0; order[i].engine != NVKM_SUBDEV_NR; i++) {
		if (!FUNC1(dev, order[i].engine))
			continue;

		FUNC2(dev, 0x20200 + order[i].offset, 0x00ff, 0x0045);
	}
}