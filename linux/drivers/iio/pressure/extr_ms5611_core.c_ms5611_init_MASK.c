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
struct ms5611_state {int /*<<< orphan*/  vdd; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct iio_dev {TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct ms5611_state* FUNC4 (struct iio_dev*) ; 
 int FUNC5 (struct iio_dev*) ; 
 int FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct iio_dev *indio_dev)
{
	int ret;
	struct ms5611_state *st = FUNC4(indio_dev);

	/* Enable attached regulator if any. */
	st->vdd = FUNC3(indio_dev->dev.parent, "vdd");
	if (FUNC0(st->vdd))
		return FUNC1(st->vdd);

	ret = FUNC8(st->vdd);
	if (ret) {
		FUNC2(indio_dev->dev.parent,
			"failed to enable Vdd supply: %d\n", ret);
		return ret;
	}

	ret = FUNC6(indio_dev);
	if (ret < 0)
		goto err_regulator_disable;

	ret = FUNC5(indio_dev);
	if (ret < 0)
		goto err_regulator_disable;

	return 0;

err_regulator_disable:
	FUNC7(st->vdd);
	return ret;
}