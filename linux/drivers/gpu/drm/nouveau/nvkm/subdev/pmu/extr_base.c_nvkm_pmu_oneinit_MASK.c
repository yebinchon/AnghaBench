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
struct nvkm_pmu {int /*<<< orphan*/  falcon; int /*<<< orphan*/  subdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 struct nvkm_pmu* FUNC1 (struct nvkm_subdev*) ; 

__attribute__((used)) static int
FUNC2(struct nvkm_subdev *subdev)
{
	struct nvkm_pmu *pmu = FUNC1(subdev);
	return FUNC0(&pmu->subdev, "PMU", 0x10a000, &pmu->falcon);
}