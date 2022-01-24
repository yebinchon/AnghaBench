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
struct nvkm_timer {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct nvkm_therm {TYPE_2__ subdev; } ;
struct nvkm_gpio {int dummy; } ;
struct TYPE_3__ {struct nvkm_therm* parent; } ;
struct nvkm_fantog {int percent; int period_us; int /*<<< orphan*/  lock; int /*<<< orphan*/  alarm; TYPE_1__ base; } ;
struct nvkm_device {struct nvkm_gpio* gpio; struct nvkm_timer* timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCB_GPIO_FAN ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_timer*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC5(struct nvkm_fantog *fan, int percent)
{
	struct nvkm_therm *therm = fan->base.parent;
	struct nvkm_device *device = therm->subdev.device;
	struct nvkm_timer *tmr = device->timer;
	struct nvkm_gpio *gpio = device->gpio;
	unsigned long flags;
	int duty;

	FUNC3(&fan->lock, flags);
	if (percent < 0)
		percent = fan->percent;
	fan->percent = percent;

	duty = !FUNC0(gpio, 0, DCB_GPIO_FAN, 0xff);
	FUNC1(gpio, 0, DCB_GPIO_FAN, 0xff, duty);

	if (percent != (duty * 100)) {
		u64 next_change = (percent * fan->period_us) / 100;
		if (!duty)
			next_change = fan->period_us - next_change;
		FUNC2(tmr, next_change * 1000, &fan->alarm);
	}
	FUNC4(&fan->lock, flags);
}