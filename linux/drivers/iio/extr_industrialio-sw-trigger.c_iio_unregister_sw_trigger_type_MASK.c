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
struct iio_sw_trigger_type {int /*<<< orphan*/  group; int /*<<< orphan*/  list; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct iio_sw_trigger_type* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iio_trigger_types_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct iio_sw_trigger_type *t)
{
	struct iio_sw_trigger_type *iter;

	FUNC3(&iio_trigger_types_lock);
	iter = FUNC0(t->name, FUNC5(t->name));
	if (iter)
		FUNC2(&t->list);
	FUNC4(&iio_trigger_types_lock);

	FUNC1(t->group);
}