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
struct iio_dev {int dummy; } ;
struct ad7766 {int /*<<< orphan*/  pd_gpio; int /*<<< orphan*/  reg; TYPE_1__* spi; int /*<<< orphan*/  mclk; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ad7766* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev)
{
	struct ad7766 *ad7766 = FUNC4(indio_dev);
	int ret;

	ret = FUNC6(FUNC0(ad7766->reg), ad7766->reg);
	if (ret < 0) {
		FUNC2(&ad7766->spi->dev, "Failed to enable supplies: %d\n",
			ret);
		return ret;
	}

	ret = FUNC1(ad7766->mclk);
	if (ret < 0) {
		FUNC2(&ad7766->spi->dev, "Failed to enable MCLK: %d\n", ret);
		FUNC5(FUNC0(ad7766->reg), ad7766->reg);
		return ret;
	}

	FUNC3(ad7766->pd_gpio, 0);

	return 0;
}