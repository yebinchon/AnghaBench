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
struct iio_sw_device_type {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 struct iio_sw_device_type* FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iio_device_types_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
struct iio_sw_device_type *FUNC5(const char *name)
{
	struct iio_sw_device_type *dt;

	FUNC1(&iio_device_types_lock);
	dt = FUNC0(name, FUNC3(name));
	if (dt && !FUNC4(dt->owner))
		dt = NULL;
	FUNC2(&iio_device_types_lock);

	return dt;
}