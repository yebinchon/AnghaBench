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
struct zpa2326_private {int /*<<< orphan*/  timestamp; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 scalar_t__ FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 scalar_t__ FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct iio_dev *indio_dev = data;

	if (FUNC0(indio_dev)) {
		/* Timestamping needed for buffered sampling only. */
		((struct zpa2326_private *)
		 FUNC2(indio_dev))->timestamp = FUNC1(indio_dev);
	}

	return IRQ_WAKE_THREAD;
}