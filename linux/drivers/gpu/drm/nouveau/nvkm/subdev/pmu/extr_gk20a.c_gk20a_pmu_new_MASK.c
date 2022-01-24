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
struct nvkm_pmu {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct gk20a_pmu {int /*<<< orphan*/  alarm; int /*<<< orphan*/ * data; struct nvkm_pmu base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  gk20a_dvfs_data ; 
 int /*<<< orphan*/  gk20a_pmu ; 
 int /*<<< orphan*/  gk20a_pmu_dvfs_work ; 
 struct gk20a_pmu* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nvkm_device*,int,struct nvkm_pmu*) ; 

int
FUNC3(struct nvkm_device *device, int index, struct nvkm_pmu **ppmu)
{
	struct gk20a_pmu *pmu;

	if (!(pmu = FUNC0(sizeof(*pmu), GFP_KERNEL)))
		return -ENOMEM;
	*ppmu = &pmu->base;

	FUNC2(&gk20a_pmu, device, index, &pmu->base);

	pmu->data = &gk20a_dvfs_data;
	FUNC1(&pmu->alarm, gk20a_pmu_dvfs_work);

	return 0;
}