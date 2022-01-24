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
typedef  int u8 ;
struct itg3200 {int /*<<< orphan*/  i2c; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct itg3200* FUNC1 (struct iio_dev*) ; 

int FUNC2(struct iio_dev *indio_dev,
		u8 reg_address, u8 *val)
{
	struct itg3200 *st = FUNC1(indio_dev);
	int ret;

	ret = FUNC0(st->i2c, reg_address);
	if (ret < 0)
		return ret;
	*val = ret;
	return 0;
}