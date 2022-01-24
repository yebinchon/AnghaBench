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
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct adis16136 {int /*<<< orphan*/  adis; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADIS16136_REG_AVG_CNT ; 
 int IIO_VAL_INT ; 
 unsigned int* adis16136_3db_divisors ; 
 int FUNC0 (struct adis16136*,unsigned int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 struct adis16136* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev, int *val)
{
	struct adis16136 *adis16136 = FUNC2(indio_dev);
	unsigned int freq;
	uint16_t val16;
	int ret;

	FUNC3(&indio_dev->mlock);

	ret = FUNC1(&adis16136->adis, ADIS16136_REG_AVG_CNT, &val16);
	if (ret < 0)
		goto err_unlock;

	ret = FUNC0(adis16136, &freq);
	if (ret < 0)
		goto err_unlock;

	*val = freq / adis16136_3db_divisors[val16 & 0x07];

err_unlock:
	FUNC4(&indio_dev->mlock);

	return ret ? ret : IIO_VAL_INT;
}