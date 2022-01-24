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
struct vcnl4035_data {int /*<<< orphan*/  drdy_trigger0; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IIO_EV_DIR_EITHER ; 
 int /*<<< orphan*/  IIO_EV_TYPE_THRESH ; 
 int /*<<< orphan*/  IIO_LIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct vcnl4035_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct vcnl4035_data*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *private)
{
	struct iio_dev *indio_dev = private;
	struct vcnl4035_data *data = FUNC2(indio_dev);

	if (FUNC5(data)) {
		FUNC3(indio_dev, FUNC0(IIO_LIGHT,
							0,
							IIO_EV_TYPE_THRESH,
							IIO_EV_DIR_EITHER),
				FUNC1(indio_dev));
		FUNC4(data->drdy_trigger0);
		return IRQ_HANDLED;
	}

	return IRQ_NONE;
}