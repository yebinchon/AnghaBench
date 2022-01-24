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
typedef  int u64 ;
typedef  int u16 ;
struct nvkm_timer {int dummy; } ;
struct nvkm_subdev {TYPE_1__* device; } ;
struct nvkm_therm {struct nvkm_subdev subdev; } ;
struct TYPE_4__ {int bump_period; int slow_down_period; int /*<<< orphan*/  max_duty; int /*<<< orphan*/  min_duty; } ;
struct nvkm_fan {int percent; int (* get ) (struct nvkm_therm*) ;int (* set ) (struct nvkm_therm*,int) ;int /*<<< orphan*/  alarm; TYPE_2__ bios; int /*<<< orphan*/  lock; struct nvkm_therm* parent; } ;
struct TYPE_3__ {struct nvkm_timer* timer; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_subdev*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_timer*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (struct nvkm_therm*) ; 
 int FUNC9 (struct nvkm_therm*,int) ; 
 int /*<<< orphan*/  u8 ; 

__attribute__((used)) static int
FUNC10(struct nvkm_fan *fan, bool immediate, int target)
{
	struct nvkm_therm *therm = fan->parent;
	struct nvkm_subdev *subdev = &therm->subdev;
	struct nvkm_timer *tmr = subdev->device->timer;
	unsigned long flags;
	int ret = 0;
	int duty;

	/* update target fan speed, restricting to allowed range */
	FUNC6(&fan->lock, flags);
	if (target < 0)
		target = fan->percent;
	target = FUNC1(u8, target, fan->bios.min_duty);
	target = FUNC3(u8, target, fan->bios.max_duty);
	if (fan->percent != target) {
		FUNC4(subdev, "FAN target: %d\n", target);
		fan->percent = target;
	}

	/* check that we're not already at the target duty cycle */
	duty = fan->get(therm);
	if (duty == target) {
		FUNC7(&fan->lock, flags);
		return 0;
	}

	/* smooth out the fanspeed increase/decrease */
	if (!immediate && duty >= 0) {
		/* the constant "3" is a rough approximation taken from
		 * nvidia's behaviour.
		 * it is meant to bump the fan speed more incrementally
		 */
		if (duty < target)
			duty = FUNC2(duty + 3, target);
		else if (duty > target)
			duty = FUNC0(duty - 3, target);
	} else {
		duty = target;
	}

	FUNC4(subdev, "FAN update: %d\n", duty);
	ret = fan->set(therm, duty);
	if (ret) {
		FUNC7(&fan->lock, flags);
		return ret;
	}

	/* fan speed updated, drop the fan lock before grabbing the
	 * alarm-scheduling lock and risking a deadlock
	 */
	FUNC7(&fan->lock, flags);

	/* schedule next fan update, if not at target speed already */
	if (target != duty) {
		u16 bump_period = fan->bios.bump_period;
		u16 slow_down_period = fan->bios.slow_down_period;
		u64 delay;

		if (duty > target)
			delay = slow_down_period;
		else if (duty == target)
			delay = FUNC2(bump_period, slow_down_period) ;
		else
			delay = bump_period;

		FUNC5(tmr, delay * 1000 * 1000, &fan->alarm);
	}

	return ret;
}