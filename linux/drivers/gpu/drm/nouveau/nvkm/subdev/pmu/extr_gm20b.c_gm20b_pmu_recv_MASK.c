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
struct nvkm_pmu {int /*<<< orphan*/  queue; int /*<<< orphan*/  subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC2(struct nvkm_pmu *pmu)
{
	if (!pmu->queue) {
		FUNC1(&pmu->subdev,
			  "recv function called while no firmware set!\n");
		return;
	}

	FUNC0(pmu->queue);
}