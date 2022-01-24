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
struct adis16136 {int /*<<< orphan*/  adis; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADIS16136_REG_AVG_CNT ; 
 int FUNC0 (unsigned int*) ; 
 unsigned int* adis16136_3db_divisors ; 
 int FUNC1 (struct adis16136*,unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct adis16136* FUNC3 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev, int val)
{
	struct adis16136 *adis16136 = FUNC3(indio_dev);
	unsigned int freq;
	int i, ret;

	ret = FUNC1(adis16136, &freq);
	if (ret < 0)
		return ret;

	for (i = FUNC0(adis16136_3db_divisors) - 1; i >= 1; i--) {
		if (freq / adis16136_3db_divisors[i] >= val)
			break;
	}

	return FUNC2(&adis16136->adis, ADIS16136_REG_AVG_CNT, i);
}