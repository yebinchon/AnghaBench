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
struct nvkm_subdev {int dummy; } ;
struct nvkm_pmu {int /*<<< orphan*/  falcon; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (struct nvkm_subdev*) ; 

__attribute__((used)) static void *
FUNC3(struct nvkm_subdev *subdev)
{
	struct nvkm_pmu *pmu = FUNC2(subdev);
	FUNC1(&pmu->queue);
	FUNC0(&pmu->falcon);
	return FUNC2(subdev);
}