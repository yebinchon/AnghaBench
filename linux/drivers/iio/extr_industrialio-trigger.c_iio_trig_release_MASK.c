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
struct iio_trigger {struct iio_trigger* name; scalar_t__ subirq_base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int CONFIG_IIO_CONSUMERS_PER_TRIGGER ; 
 int /*<<< orphan*/  IRQ_NOAUTOEN ; 
 int IRQ_NOPROBE ; 
 int IRQ_NOREQUEST ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_trigger*) ; 
 struct iio_trigger* FUNC5 (struct device*) ; 

__attribute__((used)) static void FUNC6(struct device *device)
{
	struct iio_trigger *trig = FUNC5(device);
	int i;

	if (trig->subirq_base) {
		for (i = 0; i < CONFIG_IIO_CONSUMERS_PER_TRIGGER; i++) {
			FUNC1(trig->subirq_base + i,
					  IRQ_NOAUTOEN,
					  IRQ_NOREQUEST | IRQ_NOPROBE);
			FUNC2(trig->subirq_base + i,
				     NULL);
			FUNC3(trig->subirq_base + i,
					NULL);
		}

		FUNC0(trig->subirq_base,
			       CONFIG_IIO_CONSUMERS_PER_TRIGGER);
	}
	FUNC4(trig->name);
	FUNC4(trig);
}