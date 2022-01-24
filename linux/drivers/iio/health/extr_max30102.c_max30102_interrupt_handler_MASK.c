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
struct max30102_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  processed_buffer; int /*<<< orphan*/  indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  masklength; int /*<<< orphan*/  active_scan_mask; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct max30102_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct max30102_data*) ; 
 int FUNC4 (struct max30102_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *private)
{
	struct iio_dev *indio_dev = private;
	struct max30102_data *data = FUNC1(indio_dev);
	unsigned int measurements = FUNC0(indio_dev->active_scan_mask,
						  indio_dev->masklength);
	int ret, cnt = 0;

	FUNC5(&data->lock);

	while (cnt || (cnt = FUNC3(data)) > 0) {
		ret = FUNC4(data, measurements);
		if (ret)
			break;

		FUNC2(data->indio_dev, data->processed_buffer);
		cnt--;
	}

	FUNC6(&data->lock);

	return IRQ_HANDLED;
}