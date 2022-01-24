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
struct iio_dummy_state {int /*<<< orphan*/  event_irq; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct iio_dummy_state* FUNC2 (struct iio_dev*) ; 

void FUNC3(struct iio_dev *indio_dev)
{
	struct iio_dummy_state *st = FUNC2(indio_dev);

	FUNC0(st->event_irq, indio_dev);
	/* Not part of normal driver */
	FUNC1(st->event_irq);
}