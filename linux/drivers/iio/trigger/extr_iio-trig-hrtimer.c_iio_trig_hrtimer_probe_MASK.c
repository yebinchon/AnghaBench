#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct iio_sw_trigger {TYPE_2__* trigger; } ;
struct TYPE_9__ {int /*<<< orphan*/  function; } ;
struct iio_hrtimer_info {int sampling_frequency; int period; struct iio_sw_trigger swt; TYPE_6__ timer; } ;
struct TYPE_7__ {int /*<<< orphan*/  groups; } ;
struct TYPE_8__ {TYPE_1__ dev; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int ENOMEM ; 
 struct iio_sw_trigger* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HRTIMER_DEFAULT_SAMPLING_FREQUENCY ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iio_hrtimer_attr_groups ; 
 int /*<<< orphan*/  iio_hrtimer_trig_handler ; 
 int /*<<< orphan*/  iio_hrtimer_trigger_ops ; 
 int /*<<< orphan*/  iio_hrtimer_type ; 
 int /*<<< orphan*/  FUNC2 (struct iio_sw_trigger*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct iio_hrtimer_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct iio_hrtimer_info*) ; 
 struct iio_hrtimer_info* FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct iio_sw_trigger *FUNC9(const char *name)
{
	struct iio_hrtimer_info *trig_info;
	int ret;

	trig_info = FUNC8(sizeof(*trig_info), GFP_KERNEL);
	if (!trig_info)
		return FUNC0(-ENOMEM);

	trig_info->swt.trigger = FUNC3("%s", name);
	if (!trig_info->swt.trigger) {
		ret = -ENOMEM;
		goto err_free_trig_info;
	}

	FUNC6(trig_info->swt.trigger, trig_info);
	trig_info->swt.trigger->ops = &iio_hrtimer_trigger_ops;
	trig_info->swt.trigger->dev.groups = iio_hrtimer_attr_groups;

	FUNC1(&trig_info->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
	trig_info->timer.function = iio_hrtimer_trig_handler;

	trig_info->sampling_frequency = HRTIMER_DEFAULT_SAMPLING_FREQUENCY;
	trig_info->period = NSEC_PER_SEC / trig_info->sampling_frequency;

	ret = FUNC5(trig_info->swt.trigger);
	if (ret)
		goto err_free_trigger;

	FUNC2(&trig_info->swt, name, &iio_hrtimer_type);
	return &trig_info->swt;
err_free_trigger:
	FUNC4(trig_info->swt.trigger);
err_free_trig_info:
	FUNC7(trig_info);

	return FUNC0(ret);
}