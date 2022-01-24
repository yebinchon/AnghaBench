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
struct zpa2326_private {int /*<<< orphan*/  vref; int /*<<< orphan*/  vdd; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev const*,char*) ; 
 int FUNC3 (struct iio_dev const*) ; 
 int FUNC4 (struct iio_dev const*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev const*) ; 

__attribute__((used)) static int FUNC6(const struct iio_dev         *indio_dev,
			    const struct zpa2326_private *private)
{
	int err;

	err = FUNC1(private->vref);
	if (err)
		return err;

	err = FUNC1(private->vdd);
	if (err)
		goto vref;

	FUNC2(indio_dev, "powered on");

	err = FUNC3(indio_dev);
	if (err)
		goto vdd;

	err = FUNC4(indio_dev);
	if (err)
		goto sleep;

	return 0;

sleep:
	FUNC5(indio_dev);
vdd:
	FUNC0(private->vdd);
vref:
	FUNC0(private->vref);

	FUNC2(indio_dev, "powered off");

	return err;
}