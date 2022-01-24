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
struct nvkm_subdev {int dummy; } ;
struct nvkm_pmu {TYPE_1__* func; } ;
struct TYPE_2__ {int (* init ) (struct nvkm_pmu*) ;} ;

/* Variables and functions */
 struct nvkm_pmu* FUNC0 (struct nvkm_subdev*) ; 
 int FUNC1 (struct nvkm_pmu*) ; 
 int FUNC2 (struct nvkm_pmu*) ; 

__attribute__((used)) static int
FUNC3(struct nvkm_subdev *subdev)
{
	struct nvkm_pmu *pmu = FUNC0(subdev);
	int ret = FUNC1(pmu);
	if (ret == 0 && pmu->func->init)
		ret = pmu->func->init(pmu);
	return ret;
}