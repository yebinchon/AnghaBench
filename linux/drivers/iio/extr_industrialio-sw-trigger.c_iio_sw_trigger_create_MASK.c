#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iio_sw_trigger_type {int /*<<< orphan*/  owner; TYPE_1__* ops; } ;
struct iio_sw_trigger {struct iio_sw_trigger_type* trigger_type; } ;
struct TYPE_2__ {struct iio_sw_trigger* (* probe ) (char const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct iio_sw_trigger* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct iio_sw_trigger*) ; 
 struct iio_sw_trigger_type* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 struct iio_sw_trigger* FUNC5 (char const*) ; 

struct iio_sw_trigger *FUNC6(const char *type, const char *name)
{
	struct iio_sw_trigger *t;
	struct iio_sw_trigger_type *tt;

	tt = FUNC2(type);
	if (!tt) {
		FUNC4("Invalid trigger type: %s\n", type);
		return FUNC0(-EINVAL);
	}
	t = tt->ops->probe(name);
	if (FUNC1(t))
		goto out_module_put;

	t->trigger_type = tt;

	return t;
out_module_put:
	FUNC3(tt->owner);
	return t;
}