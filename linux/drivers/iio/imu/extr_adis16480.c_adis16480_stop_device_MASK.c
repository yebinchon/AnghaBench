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
struct iio_dev {int /*<<< orphan*/  dev; } ;
struct adis16480 {int /*<<< orphan*/  adis; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADIS16480_REG_SLP_CNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct adis16480* FUNC3 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev)
{
	struct adis16480 *st = FUNC3(indio_dev);
	int ret;

	ret = FUNC1(&st->adis, ADIS16480_REG_SLP_CNT, FUNC0(9));
	if (ret)
		FUNC2(&indio_dev->dev,
			"Could not power down device: %d\n", ret);

	return ret;
}