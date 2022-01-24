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
struct adis16460 {int /*<<< orphan*/  adis; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADIS16460_REG_GLOB_CMD ; 
 int /*<<< orphan*/  ADIS16460_REG_PROD_ID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int) ; 
 struct adis16460* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,unsigned int*) ; 

__attribute__((used)) static int FUNC9(struct iio_dev *indio_dev)
{
	struct adis16460 *st = FUNC6(indio_dev);
	uint16_t prod_id;
	unsigned int device_id;
	int ret;

	FUNC3(&st->adis);
	FUNC7(222);

	ret = FUNC4(&st->adis, ADIS16460_REG_GLOB_CMD, FUNC0(1));
	if (ret)
		return ret;
	FUNC7(75);

	ret = FUNC1(&st->adis);
	if (ret)
		return ret;

	ret = FUNC2(&st->adis, ADIS16460_REG_PROD_ID, &prod_id);
	if (ret)
		return ret;

	ret = FUNC8(indio_dev->name, "adis%u\n", &device_id);
	if (ret != 1)
		return -EINVAL;

	if (prod_id != device_id)
		FUNC5(&indio_dev->dev, "Device ID(%u) and product ID(%u) do not match.",
				device_id, prod_id);

	return 0;
}