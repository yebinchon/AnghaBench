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
struct max30100_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  buffer; int /*<<< orphan*/  indio_dev; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 struct max30100_data* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct max30100_data*) ; 
 int FUNC3 (struct max30100_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *private)
{
	struct iio_dev *indio_dev = private;
	struct max30100_data *data = FUNC0(indio_dev);
	int ret, cnt = 0;

	FUNC4(&data->lock);

	while (cnt || (cnt = FUNC2(data)) > 0) {
		ret = FUNC3(data);
		if (ret)
			break;

		FUNC1(data->indio_dev, data->buffer);
		cnt--;
	}

	FUNC5(&data->lock);

	return IRQ_HANDLED;
}