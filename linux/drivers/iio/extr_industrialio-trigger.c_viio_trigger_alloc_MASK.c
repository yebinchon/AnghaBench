#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_5__ {int /*<<< orphan*/ * bus; int /*<<< orphan*/ * type; } ;
struct TYPE_4__ {int /*<<< orphan*/ * irq_unmask; int /*<<< orphan*/ * irq_mask; int /*<<< orphan*/ * name; } ;
struct iio_trigger {scalar_t__ subirq_base; TYPE_2__ dev; TYPE_1__ subirq_chip; int /*<<< orphan*/ * name; int /*<<< orphan*/  pool_lock; } ;

/* Variables and functions */
 int CONFIG_IIO_CONSUMERS_PER_TRIGGER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQ_NOAUTOEN ; 
 int /*<<< orphan*/  IRQ_NOPROBE ; 
 int IRQ_NOREQUEST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  iio_bus_type ; 
 int /*<<< orphan*/  iio_trig_subirqmask ; 
 int /*<<< orphan*/  iio_trig_subirqunmask ; 
 int /*<<< orphan*/  iio_trig_type ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct iio_trigger*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 struct iio_trigger* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct iio_trigger *FUNC11(const char *fmt, va_list vargs)
{
	struct iio_trigger *trig;
	int i;

	trig = FUNC9(sizeof *trig, GFP_KERNEL);
	if (!trig)
		return NULL;

	trig->dev.type = &iio_trig_type;
	trig->dev.bus = &iio_bus_type;
	FUNC0(&trig->dev);

	FUNC10(&trig->pool_lock);
	trig->subirq_base = FUNC2(-1, 0,
					    CONFIG_IIO_CONSUMERS_PER_TRIGGER,
					    0);
	if (trig->subirq_base < 0)
		goto free_trig;

	trig->name = FUNC8(GFP_KERNEL, fmt, vargs);
	if (trig->name == NULL)
		goto free_descs;

	trig->subirq_chip.name = trig->name;
	trig->subirq_chip.irq_mask = &iio_trig_subirqmask;
	trig->subirq_chip.irq_unmask = &iio_trig_subirqunmask;
	for (i = 0; i < CONFIG_IIO_CONSUMERS_PER_TRIGGER; i++) {
		FUNC5(trig->subirq_base + i, &trig->subirq_chip);
		FUNC6(trig->subirq_base + i, &handle_simple_irq);
		FUNC4(trig->subirq_base + i,
				  IRQ_NOREQUEST | IRQ_NOAUTOEN, IRQ_NOPROBE);
	}
	FUNC1(&trig->dev);

	return trig;

free_descs:
	FUNC3(trig->subirq_base, CONFIG_IIO_CONSUMERS_PER_TRIGGER);
free_trig:
	FUNC7(trig);
	return NULL;
}