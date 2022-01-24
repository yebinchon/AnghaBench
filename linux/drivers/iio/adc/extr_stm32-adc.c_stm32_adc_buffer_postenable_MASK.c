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
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev)
{
	int ret;

	ret = FUNC1(indio_dev);
	if (ret < 0)
		return ret;

	ret = FUNC0(indio_dev);
	if (ret < 0)
		FUNC2(indio_dev);

	return ret;
}