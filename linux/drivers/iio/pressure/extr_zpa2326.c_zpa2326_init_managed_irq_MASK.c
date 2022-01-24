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
struct zpa2326_private {int irq; int /*<<< orphan*/  data_ready; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zpa2326_handle_irq ; 
 int /*<<< orphan*/  zpa2326_handle_threaded_irq ; 

__attribute__((used)) static int FUNC5(struct device          *parent,
				    struct iio_dev         *indio_dev,
				    struct zpa2326_private *private,
				    int                     irq)
{
	int err;

	private->irq = irq;

	if (irq <= 0) {
		/*
		 * Platform declared no interrupt line: device will be polled
		 * for data availability.
		 */
		FUNC1(parent, "no interrupt found, running in polling mode");
		return 0;
	}

	FUNC4(&private->data_ready);

	/* Request handler to be scheduled into threaded interrupt context. */
	err = FUNC3(parent, irq, zpa2326_handle_irq,
					zpa2326_handle_threaded_irq,
					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
					FUNC2(parent), indio_dev);
	if (err) {
		FUNC0(parent, "failed to request interrupt %d (%d)", irq,
			err);
		return err;
	}

	FUNC1(parent, "using interrupt %d", irq);

	return 0;
}