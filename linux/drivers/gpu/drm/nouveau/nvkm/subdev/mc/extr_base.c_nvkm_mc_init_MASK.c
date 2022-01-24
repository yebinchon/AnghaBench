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
struct nvkm_subdev {int /*<<< orphan*/  device; } ;
struct nvkm_mc {TYPE_1__* func; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* init ) (struct nvkm_mc*) ;} ;

/* Variables and functions */
 struct nvkm_mc* FUNC0 (struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_mc*) ; 

__attribute__((used)) static int
FUNC3(struct nvkm_subdev *subdev)
{
	struct nvkm_mc *mc = FUNC0(subdev);
	if (mc->func->init)
		mc->func->init(mc);
	FUNC1(subdev->device);
	return 0;
}