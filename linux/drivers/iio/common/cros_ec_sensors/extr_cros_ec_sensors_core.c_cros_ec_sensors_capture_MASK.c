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
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; int /*<<< orphan*/ * active_scan_mask; int /*<<< orphan*/  scan_bytes; } ;
struct cros_ec_sensors_core_state {int (* read_ec_sensors_data ) (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  cmd_lock; scalar_t__ samples; } ;
typedef  int /*<<< orphan*/  s16 ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct cros_ec_sensors_core_state* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

irqreturn_t FUNC8(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct cros_ec_sensors_core_state *st = FUNC1(indio_dev);
	int ret;

	FUNC5(&st->cmd_lock);

	/* Clear capture data. */
	FUNC4(st->samples, 0, indio_dev->scan_bytes);

	/* Read data based on which channels are enabled in scan mask. */
	ret = st->read_ec_sensors_data(indio_dev,
				       *(indio_dev->active_scan_mask),
				       (s16 *)st->samples);
	if (ret < 0)
		goto done;

	FUNC2(indio_dev, st->samples,
					   FUNC0(indio_dev));

done:
	/*
	 * Tell the core we are done with this trigger and ready for the
	 * next one.
	 */
	FUNC3(indio_dev->trig);

	FUNC6(&st->cmd_lock);

	return IRQ_HANDLED;
}