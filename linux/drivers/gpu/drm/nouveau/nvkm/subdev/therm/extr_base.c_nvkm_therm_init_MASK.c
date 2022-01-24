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
struct nvkm_therm {scalar_t__ suspend; TYPE_2__* fan; TYPE_1__* func; } ;
struct nvkm_subdev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  percent; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* init ) (struct nvkm_therm*) ;} ;

/* Variables and functions */
 struct nvkm_therm* FUNC0 (struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_therm*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_therm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_therm*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_therm*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_therm*) ; 

__attribute__((used)) static int
FUNC6(struct nvkm_subdev *subdev)
{
	struct nvkm_therm *therm = FUNC0(subdev);

	if (therm->func->init)
		therm->func->init(therm);

	if (therm->suspend >= 0) {
		/* restore the pwm value only when on manual or auto mode */
		if (therm->suspend > 0)
			FUNC3(therm, true, therm->fan->percent);

		FUNC2(therm, therm->suspend);
	}

	FUNC4(therm);
	FUNC1(therm);
	return 0;
}