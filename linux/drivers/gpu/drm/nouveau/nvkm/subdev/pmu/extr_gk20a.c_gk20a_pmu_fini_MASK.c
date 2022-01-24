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
struct TYPE_4__ {TYPE_1__* device; } ;
struct nvkm_pmu {TYPE_2__ subdev; int /*<<< orphan*/  falcon; } ;
struct gk20a_pmu {int /*<<< orphan*/  alarm; } ;
struct TYPE_3__ {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 struct gk20a_pmu* FUNC0 (struct nvkm_pmu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct nvkm_pmu *pmu)
{
	struct gk20a_pmu *gpmu = FUNC0(pmu);
	FUNC2(pmu->subdev.device->timer, 0, &gpmu->alarm);

	FUNC1(pmu->falcon, &pmu->subdev);
}