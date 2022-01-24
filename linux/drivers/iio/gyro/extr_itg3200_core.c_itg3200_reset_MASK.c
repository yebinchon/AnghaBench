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
struct itg3200 {TYPE_1__* i2c; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ITG3200_IRQ_ACTIVE_HIGH ; 
 int ITG3200_IRQ_LATCH_50US_PULSE ; 
 int ITG3200_IRQ_LATCH_CLEAR_ANY ; 
 int ITG3200_IRQ_PUSH_PULL ; 
 int /*<<< orphan*/  ITG3200_REG_IRQ_CONFIG ; 
 int /*<<< orphan*/  ITG3200_REG_POWER_MANAGEMENT ; 
 int ITG3200_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct itg3200* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct iio_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev)
{
	struct itg3200 *st = FUNC2(indio_dev);
	int ret;

	FUNC0(&st->i2c->dev, "reset device");

	ret = FUNC3(indio_dev,
			ITG3200_REG_POWER_MANAGEMENT,
			ITG3200_RESET);
	if (ret) {
		FUNC1(&st->i2c->dev, "error resetting device");
		goto error_ret;
	}

	/* Wait for PLL (1ms according to datasheet) */
	FUNC4(1500);

	ret = FUNC3(indio_dev,
			ITG3200_REG_IRQ_CONFIG,
			ITG3200_IRQ_ACTIVE_HIGH |
			ITG3200_IRQ_PUSH_PULL |
			ITG3200_IRQ_LATCH_50US_PULSE |
			ITG3200_IRQ_LATCH_CLEAR_ANY);

	if (ret)
		FUNC1(&st->i2c->dev, "error init device");

error_ret:
	return ret;
}