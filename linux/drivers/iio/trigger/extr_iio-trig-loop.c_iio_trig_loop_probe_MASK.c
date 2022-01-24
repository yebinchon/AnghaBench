#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct iio_sw_trigger {TYPE_1__* trigger; } ;
struct iio_loop_info {struct iio_sw_trigger swt; } ;
struct TYPE_5__ {int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct iio_sw_trigger* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  iio_loop_trigger_ops ; 
 int /*<<< orphan*/  iio_loop_type ; 
 int /*<<< orphan*/  FUNC1 (struct iio_sw_trigger*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct iio_loop_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_loop_info*) ; 
 struct iio_loop_info* FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct iio_sw_trigger *FUNC8(const char *name)
{
	struct iio_loop_info *trig_info;
	int ret;

	trig_info = FUNC7(sizeof(*trig_info), GFP_KERNEL);
	if (!trig_info)
		return FUNC0(-ENOMEM);

	trig_info->swt.trigger = FUNC2("%s", name);
	if (!trig_info->swt.trigger) {
		ret = -ENOMEM;
		goto err_free_trig_info;
	}

	FUNC5(trig_info->swt.trigger, trig_info);
	trig_info->swt.trigger->ops = &iio_loop_trigger_ops;

	ret = FUNC4(trig_info->swt.trigger);
	if (ret)
		goto err_free_trigger;

	FUNC1(&trig_info->swt, name, &iio_loop_type);

	return &trig_info->swt;

err_free_trigger:
	FUNC3(trig_info->swt.trigger);
err_free_trig_info:
	FUNC6(trig_info);

	return FUNC0(ret);
}