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
typedef  int uint16_t ;
struct iio_dev {int dummy; } ;
struct adis16400_state {int /*<<< orphan*/  adis; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADIS16400_SENS_AVG ; 
 int FUNC0 (int*) ; 
 int* adis16400_3db_divisors ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct adis16400_state* FUNC3 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev, int sps, int val)
{
	struct adis16400_state *st = FUNC3(indio_dev);
	uint16_t val16;
	int i, ret;

	for (i = FUNC0(adis16400_3db_divisors) - 1; i >= 1; i--) {
		if (sps / adis16400_3db_divisors[i] >= val)
			break;
	}

	ret = FUNC1(&st->adis, ADIS16400_SENS_AVG, &val16);
	if (ret < 0)
		return ret;

	ret = FUNC2(&st->adis, ADIS16400_SENS_AVG,
					 (val16 & ~0x07) | i);
	return ret;
}