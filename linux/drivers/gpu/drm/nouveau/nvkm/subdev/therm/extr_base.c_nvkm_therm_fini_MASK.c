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
struct nvkm_therm {int /*<<< orphan*/  mode; int /*<<< orphan*/  suspend; TYPE_1__* func; } ;
struct nvkm_subdev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* fini ) (struct nvkm_therm*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NVKM_THERM_CTRL_NONE ; 
 struct nvkm_therm* FUNC0 (struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_therm*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_therm*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_therm*) ; 

__attribute__((used)) static int
FUNC4(struct nvkm_subdev *subdev, bool suspend)
{
	struct nvkm_therm *therm = FUNC0(subdev);

	if (therm->func->fini)
		therm->func->fini(therm);

	FUNC1(therm, suspend);
	FUNC2(therm, suspend);

	if (suspend) {
		therm->suspend = therm->mode;
		therm->mode = NVKM_THERM_CTRL_NONE;
	}

	return 0;
}