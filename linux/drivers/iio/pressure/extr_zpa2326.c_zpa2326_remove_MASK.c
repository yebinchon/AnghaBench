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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct iio_dev {TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct device const*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 

void FUNC6(const struct device *parent)
{
	struct iio_dev *indio_dev = FUNC0(parent);

	FUNC1(indio_dev);
	FUNC3(indio_dev->dev.parent);
	FUNC5(indio_dev);
	FUNC4(indio_dev, FUNC2(indio_dev));
}