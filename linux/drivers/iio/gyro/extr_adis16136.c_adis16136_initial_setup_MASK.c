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
typedef  unsigned int uint16_t ;
struct iio_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct adis16136 {int /*<<< orphan*/  adis; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADIS16136_REG_PROD_ID ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int) ; 
 struct adis16136* FUNC3 (struct iio_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,unsigned int*) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev)
{
	struct adis16136 *adis16136 = FUNC3(indio_dev);
	unsigned int device_id;
	uint16_t prod_id;
	int ret;

	ret = FUNC0(&adis16136->adis);
	if (ret)
		return ret;

	ret = FUNC1(&adis16136->adis, ADIS16136_REG_PROD_ID,
		&prod_id);
	if (ret)
		return ret;

	ret = FUNC4(indio_dev->name, "adis%u\n", &device_id);
	if (ret != 1)
		return -EINVAL;

	if (prod_id != device_id)
		FUNC2(&indio_dev->dev, "Device ID(%u) and product ID(%u) do not match.",
				device_id, prod_id);

	return 0;
}