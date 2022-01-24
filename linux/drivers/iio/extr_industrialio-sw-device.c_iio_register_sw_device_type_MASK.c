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
struct iio_sw_device_type {int /*<<< orphan*/  group; int /*<<< orphan*/  name; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct iio_sw_device_type* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iio_device_type_group_type ; 
 int /*<<< orphan*/  iio_device_types_list ; 
 int /*<<< orphan*/  iio_device_types_lock ; 
 int /*<<< orphan*/  iio_devices_group ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct iio_sw_device_type *d)
{
	struct iio_sw_device_type *iter;
	int ret = 0;

	FUNC5(&iio_device_types_lock);
	iter = FUNC2(d->name, FUNC7(d->name));
	if (iter)
		ret = -EBUSY;
	else
		FUNC4(&d->list, &iio_device_types_list);
	FUNC6(&iio_device_types_lock);

	if (ret)
		return ret;

	d->group = FUNC3(iio_devices_group, d->name,
						&iio_device_type_group_type);
	if (FUNC0(d->group))
		ret = FUNC1(d->group);

	return ret;
}