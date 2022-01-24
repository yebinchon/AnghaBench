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
struct iio_trigger {int dummy; } ;
struct iio_dev {int trig_readonly; int /*<<< orphan*/  mlock; int /*<<< orphan*/  trig; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct iio_dev *indio_dev, struct iio_trigger *trig)
{
	if (!indio_dev || !trig)
		return -EINVAL;

	FUNC2(&indio_dev->mlock);
	FUNC0(indio_dev->trig_readonly);

	indio_dev->trig = FUNC1(trig);
	indio_dev->trig_readonly = true;
	FUNC3(&indio_dev->mlock);

	return 0;
}