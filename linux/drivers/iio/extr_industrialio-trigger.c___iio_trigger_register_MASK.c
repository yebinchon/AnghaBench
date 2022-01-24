#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct module {int dummy; } ;
struct iio_trigger {scalar_t__ id; int /*<<< orphan*/  dev; int /*<<< orphan*/  list; int /*<<< orphan*/  name; struct module* owner; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  iio_trigger_ida ; 
 int /*<<< orphan*/  iio_trigger_list ; 
 int /*<<< orphan*/  iio_trigger_list_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

int FUNC10(struct iio_trigger *trig_info,
			   struct module *this_mod)
{
	int ret;

	trig_info->owner = this_mod;

	trig_info->id = FUNC4(&iio_trigger_ida, 0, 0, GFP_KERNEL);
	if (trig_info->id < 0)
		return trig_info->id;

	/* Set the name used for the sysfs directory etc */
	FUNC1(&trig_info->dev, "trigger%ld",
		     (unsigned long) trig_info->id);

	ret = FUNC2(&trig_info->dev);
	if (ret)
		goto error_unregister_id;

	/* Add to list of available triggers held by the IIO core */
	FUNC7(&iio_trigger_list_lock);
	if (FUNC0(trig_info->name)) {
		FUNC9("Duplicate trigger name '%s'\n", trig_info->name);
		ret = -EEXIST;
		goto error_device_del;
	}
	FUNC6(&trig_info->list, &iio_trigger_list);
	FUNC8(&iio_trigger_list_lock);

	return 0;

error_device_del:
	FUNC8(&iio_trigger_list_lock);
	FUNC3(&trig_info->dev);
error_unregister_id:
	FUNC5(&iio_trigger_ida, trig_info->id);
	return ret;
}