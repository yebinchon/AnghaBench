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
struct nvkm_subdev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  work; } ;
struct nvkm_pmu {TYPE_2__ recv; TYPE_1__* func; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* fini ) (struct nvkm_pmu*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nvkm_pmu* FUNC1 (struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_pmu*) ; 

__attribute__((used)) static int
FUNC3(struct nvkm_subdev *subdev, bool suspend)
{
	struct nvkm_pmu *pmu = FUNC1(subdev);

	if (pmu->func->fini)
		pmu->func->fini(pmu);

	FUNC0(&pmu->recv.work);
	return 0;
}