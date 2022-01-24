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
struct iio_trigger {scalar_t__ subirq_base; int /*<<< orphan*/  pool_lock; int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_IIO_CONSUMERS_PER_TRIGGER ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_trigger *trig)
{
	int ret;
	FUNC2(&trig->pool_lock);
	ret = FUNC0(trig->pool,
				      CONFIG_IIO_CONSUMERS_PER_TRIGGER,
				      FUNC1(1));
	FUNC3(&trig->pool_lock);
	if (ret >= 0)
		ret += trig->subirq_base;

	return ret;
}