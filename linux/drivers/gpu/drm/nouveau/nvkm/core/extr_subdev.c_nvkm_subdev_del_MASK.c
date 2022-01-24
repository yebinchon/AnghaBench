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
struct nvkm_subdev {TYPE_1__* func; } ;
typedef  scalar_t__ s64 ;
struct TYPE_2__ {struct nvkm_subdev* (* dtor ) (struct nvkm_subdev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_subdev*,char*,...) ; 
 struct nvkm_subdev* FUNC5 (struct nvkm_subdev*) ; 

void
FUNC6(struct nvkm_subdev **psubdev)
{
	struct nvkm_subdev *subdev = *psubdev;
	s64 time;

	if (subdev && !FUNC0(!subdev->func)) {
		FUNC4(subdev, "destroy running...\n");
		time = FUNC3(FUNC2());
		if (subdev->func->dtor)
			*psubdev = subdev->func->dtor(subdev);
		time = FUNC3(FUNC2()) - time;
		FUNC4(subdev, "destroy completed in %lldus\n", time);
		FUNC1(*psubdev);
		*psubdev = NULL;
	}
}