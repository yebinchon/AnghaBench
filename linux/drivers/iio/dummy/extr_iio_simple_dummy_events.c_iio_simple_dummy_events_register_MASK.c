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
struct iio_dummy_state {int event_irq; int /*<<< orphan*/  regs; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct iio_dummy_state* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_simple_dummy_event_handler ; 
 int /*<<< orphan*/  iio_simple_dummy_get_timestamp ; 
 int FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct iio_dev*) ; 

int FUNC5(struct iio_dev *indio_dev)
{
	struct iio_dummy_state *st = FUNC3(indio_dev);
	int ret;

	/* Fire up event source - normally not present */
	st->event_irq = FUNC0();
	if (st->event_irq < 0) {
		ret = st->event_irq;
		goto error_ret;
	}
	st->regs = FUNC1(st->event_irq);

	ret = FUNC4(st->event_irq,
				   &iio_simple_dummy_get_timestamp,
				   &iio_simple_dummy_event_handler,
				   IRQF_ONESHOT,
				   "iio_simple_event",
				   indio_dev);
	if (ret < 0)
		goto error_free_evgen;
	return 0;

error_free_evgen:
	FUNC2(st->event_irq);
error_ret:
	return ret;
}