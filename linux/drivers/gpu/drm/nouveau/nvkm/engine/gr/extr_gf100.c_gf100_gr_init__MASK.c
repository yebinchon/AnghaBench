#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nvkm_subdev {int dummy; } ;
struct TYPE_12__ {struct nvkm_subdev subdev; } ;
struct nvkm_gr {TYPE_4__ engine; } ;
struct TYPE_10__ {int /*<<< orphan*/  falcon; } ;
struct TYPE_9__ {int /*<<< orphan*/  falcon; } ;
struct TYPE_14__ {TYPE_5__* device; } ;
struct TYPE_15__ {TYPE_6__ subdev; } ;
struct TYPE_16__ {TYPE_7__ engine; } ;
struct gf100_gr {TYPE_3__* func; TYPE_2__ gpccs; TYPE_1__ fecs; TYPE_8__ base; } ;
struct TYPE_13__ {int /*<<< orphan*/  pmu; } ;
struct TYPE_11__ {int (* init ) (struct gf100_gr*) ;} ;

/* Variables and functions */
 struct gf100_gr* FUNC0 (struct nvkm_gr*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct gf100_gr*) ; 

__attribute__((used)) static int
FUNC4(struct nvkm_gr *base)
{
	struct gf100_gr *gr = FUNC0(base);
	struct nvkm_subdev *subdev = &base->engine.subdev;
	u32 ret;

	FUNC2(gr->base.engine.subdev.device->pmu, false);

	ret = FUNC1(gr->fecs.falcon, subdev);
	if (ret)
		return ret;

	ret = FUNC1(gr->gpccs.falcon, subdev);
	if (ret)
		return ret;

	return gr->func->init(gr);
}