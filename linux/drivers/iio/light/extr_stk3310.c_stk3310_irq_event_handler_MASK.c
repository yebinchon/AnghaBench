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
typedef  int /*<<< orphan*/  u64 ;
struct stk3310_data {int /*<<< orphan*/  lock; TYPE_1__* client; int /*<<< orphan*/  reg_flag_psint; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  reg_flag_nf; } ;
struct iio_dev {int dummy; } ;
typedef  int irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IIO_EV_DIR_FALLING ; 
 int /*<<< orphan*/  IIO_EV_DIR_RISING ; 
 int /*<<< orphan*/  IIO_EV_TYPE_THRESH ; 
 int /*<<< orphan*/  IIO_PROXIMITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct stk3310_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *private)
{
	int ret;
	unsigned int dir;
	u64 event;

	struct iio_dev *indio_dev = private;
	struct stk3310_data *data = FUNC2(indio_dev);

	/* Read FLAG_NF to figure out what threshold has been met. */
	FUNC4(&data->lock);
	ret = FUNC6(data->reg_flag_nf, &dir);
	if (ret < 0) {
		FUNC1(&data->client->dev, "register read failed\n");
		FUNC5(&data->lock);
		return ret;
	}
	event = FUNC0(IIO_PROXIMITY, 1,
				     IIO_EV_TYPE_THRESH,
				     (dir ? IIO_EV_DIR_FALLING :
					    IIO_EV_DIR_RISING));
	FUNC3(indio_dev, event, data->timestamp);

	/* Reset the interrupt flag */
	ret = FUNC7(data->reg_flag_psint, 0);
	if (ret < 0)
		FUNC1(&data->client->dev, "failed to reset interrupts\n");
	FUNC5(&data->lock);

	return IRQ_HANDLED;
}