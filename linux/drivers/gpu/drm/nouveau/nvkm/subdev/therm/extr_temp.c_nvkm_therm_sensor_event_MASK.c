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
struct work_struct {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* pause ) (struct nvkm_therm*,int) ;int /*<<< orphan*/  (* downclock ) (struct nvkm_therm*,int) ;} ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_therm {TYPE_2__ emergency; TYPE_1__* func; struct nvkm_subdev subdev; } ;
typedef  enum nvkm_therm_thrs_direction { ____Placeholder_nvkm_therm_thrs_direction } nvkm_therm_thrs_direction ;
typedef  enum nvkm_therm_thrs { ____Placeholder_nvkm_therm_thrs } nvkm_therm_thrs ;
struct TYPE_3__ {int (* temp_get ) (struct nvkm_therm*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct work_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NVKM_THERM_CTRL_AUTO ; 
#define  NVKM_THERM_THRS_CRITICAL 132 
#define  NVKM_THERM_THRS_DOWNCLOCK 131 
 int NVKM_THERM_THRS_FALLING ; 
#define  NVKM_THERM_THRS_FANBOOST 130 
#define  NVKM_THERM_THRS_NR 129 
 int NVKM_THERM_THRS_RISING ; 
#define  NVKM_THERM_THRS_SHUTDOWN 128 
 struct work_struct* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nv_poweroff_work ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_subdev*,char*,int,char const* const) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_therm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_therm*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct work_struct*) ; 
 int FUNC6 (struct nvkm_therm*) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_therm*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nvkm_therm*,int) ; 

void
FUNC9(struct nvkm_therm *therm, enum nvkm_therm_thrs thrs,
			enum nvkm_therm_thrs_direction dir)
{
	struct nvkm_subdev *subdev = &therm->subdev;
	bool active;
	static const char * const thresholds[] = {
		"fanboost", "downclock", "critical", "shutdown"
	};
	int temperature = therm->func->temp_get(therm);

	if (thrs < 0 || thrs > 3)
		return;

	if (dir == NVKM_THERM_THRS_FALLING)
		FUNC2(subdev,
			  "temperature (%i C) went below the '%s' threshold\n",
			  temperature, thresholds[thrs]);
	else
		FUNC2(subdev, "temperature (%i C) hit the '%s' threshold\n",
			  temperature, thresholds[thrs]);

	active = (dir == NVKM_THERM_THRS_RISING);
	switch (thrs) {
	case NVKM_THERM_THRS_FANBOOST:
		if (active) {
			FUNC4(therm, true, 100);
			FUNC3(therm, NVKM_THERM_CTRL_AUTO);
		}
		break;
	case NVKM_THERM_THRS_DOWNCLOCK:
		if (therm->emergency.downclock)
			therm->emergency.downclock(therm, active);
		break;
	case NVKM_THERM_THRS_CRITICAL:
		if (therm->emergency.pause)
			therm->emergency.pause(therm, active);
		break;
	case NVKM_THERM_THRS_SHUTDOWN:
		if (active) {
			struct work_struct *work;

			work = FUNC1(sizeof(*work), GFP_ATOMIC);
			if (work) {
				FUNC0(work, nv_poweroff_work);
				FUNC5(work);
			}
		}
		break;
	case NVKM_THERM_THRS_NR:
		break;
	}

}