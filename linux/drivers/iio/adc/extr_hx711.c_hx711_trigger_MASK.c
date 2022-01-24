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
struct iio_poll_func {int /*<<< orphan*/  timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {int masklength; int /*<<< orphan*/  trig; TYPE_1__* channels; int /*<<< orphan*/  active_scan_mask; } ;
struct hx711_data {int /*<<< orphan*/  lock; int /*<<< orphan*/ * buffer; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct hx711_data*,int /*<<< orphan*/ ) ; 
 struct hx711_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct hx711_data *hx711_data = FUNC1(indio_dev);
	int i, j = 0;

	FUNC5(&hx711_data->lock);

	FUNC4(hx711_data->buffer, 0, sizeof(hx711_data->buffer));

	for (i = 0; i < indio_dev->masklength; i++) {
		if (!FUNC7(i, indio_dev->active_scan_mask))
			continue;

		hx711_data->buffer[j] = FUNC0(hx711_data,
					indio_dev->channels[i].channel);
		j++;
	}

	FUNC2(indio_dev, hx711_data->buffer,
							pf->timestamp);

	FUNC6(&hx711_data->lock);

	FUNC3(indio_dev->trig);

	return IRQ_HANDLED;
}