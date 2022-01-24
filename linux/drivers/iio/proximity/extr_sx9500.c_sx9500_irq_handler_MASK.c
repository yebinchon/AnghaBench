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
struct sx9500_data {int /*<<< orphan*/  trig; scalar_t__ trigger_enabled; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 struct sx9500_data* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *private)
{
	struct iio_dev *indio_dev = private;
	struct sx9500_data *data = FUNC0(indio_dev);

	if (data->trigger_enabled)
		FUNC1(data->trig);

	/*
	 * Even if no event is enabled, we need to wake the thread to
	 * clear the interrupt state by reading SX9500_REG_IRQ_SRC.  It
	 * is not possible to do that here because regmap_read takes a
	 * mutex.
	 */
	return IRQ_WAKE_THREAD;
}