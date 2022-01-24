#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nvkm_timer {int dummy; } ;
struct nvkm_subdev {TYPE_1__* device; } ;
struct nvkm_therm {int mode; int cstate; int /*<<< orphan*/  lock; int /*<<< orphan*/  alarm; TYPE_3__* fan; struct nvkm_subdev subdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  fan_mode; } ;
struct TYPE_6__ {TYPE_2__ bios; } ;
struct TYPE_4__ {struct nvkm_timer* timer; } ;

/* Variables and functions */
#define  NVBIOS_THERM_FAN_LINEAR 133 
#define  NVBIOS_THERM_FAN_OTHER 132 
#define  NVBIOS_THERM_FAN_TRIP 131 
#define  NVKM_THERM_CTRL_AUTO 130 
#define  NVKM_THERM_CTRL_MANUAL 129 
#define  NVKM_THERM_CTRL_NONE 128 
 int /*<<< orphan*/  FUNC0 (struct nvkm_subdev*,char*,int) ; 
 int FUNC1 (struct nvkm_therm*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_therm*,int,int) ; 
 int FUNC3 (struct nvkm_therm*) ; 
 int FUNC4 (struct nvkm_therm*) ; 
 int FUNC5 (struct nvkm_therm*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_timer*,unsigned long long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC9(struct nvkm_therm *therm, int mode)
{
	struct nvkm_subdev *subdev = &therm->subdev;
	struct nvkm_timer *tmr = subdev->device->timer;
	unsigned long flags;
	bool immd = true;
	bool poll = true;
	int duty = -1;

	FUNC7(&therm->lock, flags);
	if (mode < 0)
		mode = therm->mode;
	therm->mode = mode;

	switch (mode) {
	case NVKM_THERM_CTRL_MANUAL:
		FUNC6(tmr, 0, &therm->alarm);
		duty = FUNC1(therm);
		if (duty < 0)
			duty = 100;
		poll = false;
		break;
	case NVKM_THERM_CTRL_AUTO:
		switch(therm->fan->bios.fan_mode) {
		case NVBIOS_THERM_FAN_TRIP:
			duty = FUNC5(therm);
			break;
		case NVBIOS_THERM_FAN_LINEAR:
			duty = FUNC3(therm);
			break;
		case NVBIOS_THERM_FAN_OTHER:
			if (therm->cstate) {
				duty = therm->cstate;
				poll = false;
			} else {
				duty = FUNC4(therm);
			}
			break;
		}
		immd = false;
		break;
	case NVKM_THERM_CTRL_NONE:
	default:
		FUNC6(tmr, 0, &therm->alarm);
		poll = false;
	}

	if (poll)
		FUNC6(tmr, 1000000000ULL, &therm->alarm);
	FUNC8(&therm->lock, flags);

	if (duty >= 0) {
		FUNC0(subdev, "FAN target request: %d%%\n", duty);
		FUNC2(therm, immd, duty);
	}
}