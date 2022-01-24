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
struct iio_trigger {scalar_t__ subirq_base; TYPE_1__* subirqs; int /*<<< orphan*/  use_count; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;

/* Variables and functions */
 int CONFIG_IIO_CONSUMERS_PER_TRIGGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_trigger*) ; 

void FUNC4(struct iio_trigger *trig)
{
	int i;

	if (!FUNC0(&trig->use_count)) {
		FUNC1(&trig->use_count, CONFIG_IIO_CONSUMERS_PER_TRIGGER);

		for (i = 0; i < CONFIG_IIO_CONSUMERS_PER_TRIGGER; i++) {
			if (trig->subirqs[i].enabled)
				FUNC2(trig->subirq_base + i);
			else
				FUNC3(trig);
		}
	}
}