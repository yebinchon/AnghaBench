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
struct mma8452_data {TYPE_1__* chip_info; int /*<<< orphan*/  client; } ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  int irqreturn_t ;
struct TYPE_2__ {int enabled_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  IIO_ACCEL ; 
 int /*<<< orphan*/  IIO_EV_DIR_FALLING ; 
 int /*<<< orphan*/  IIO_EV_TYPE_MAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IIO_MOD_X_AND_Y_AND_Z ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int MMA8452_INT_DRDY ; 
 int MMA8452_INT_FF_MT ; 
 int /*<<< orphan*/  MMA8452_INT_SRC ; 
 int MMA8452_INT_TRANS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct mma8452_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct mma8452_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct iio_dev*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *p)
{
	struct iio_dev *indio_dev = p;
	struct mma8452_data *data = FUNC3(indio_dev);
	int ret = IRQ_NONE;
	int src;

	src = FUNC1(data->client, MMA8452_INT_SRC);
	if (src < 0)
		return IRQ_NONE;

	if (!(src & (data->chip_info->enabled_events | MMA8452_INT_DRDY)))
		return IRQ_NONE;

	if (src & MMA8452_INT_DRDY) {
		FUNC5(indio_dev->trig);
		ret = IRQ_HANDLED;
	}

	if (src & MMA8452_INT_FF_MT) {
		if (FUNC6(data)) {
			s64 ts = FUNC2(indio_dev);

			FUNC4(indio_dev,
				       FUNC0(IIO_ACCEL, 0,
							  IIO_MOD_X_AND_Y_AND_Z,
							  IIO_EV_TYPE_MAG,
							  IIO_EV_DIR_FALLING),
					ts);
		}
		ret = IRQ_HANDLED;
	}

	if (src & MMA8452_INT_TRANS) {
		FUNC7(indio_dev);
		ret = IRQ_HANDLED;
	}

	return ret;
}