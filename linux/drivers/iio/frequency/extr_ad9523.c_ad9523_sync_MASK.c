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
 int /*<<< orphan*/  AD9523_STATUS_SIGNALS ; 
 int AD9523_STATUS_SIGNALS_SYNC_MAN_CTRL ; 
 int FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iio_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev)
{
	int ret, tmp;

	ret = FUNC1(indio_dev, AD9523_STATUS_SIGNALS);
	if (ret < 0)
		return ret;

	tmp = ret;
	tmp |= AD9523_STATUS_SIGNALS_SYNC_MAN_CTRL;

	ret = FUNC2(indio_dev, AD9523_STATUS_SIGNALS, tmp);
	if (ret < 0)
		return ret;

	FUNC0(indio_dev);
	tmp &= ~AD9523_STATUS_SIGNALS_SYNC_MAN_CTRL;

	ret = FUNC2(indio_dev, AD9523_STATUS_SIGNALS, tmp);
	if (ret < 0)
		return ret;

	return FUNC0(indio_dev);
}