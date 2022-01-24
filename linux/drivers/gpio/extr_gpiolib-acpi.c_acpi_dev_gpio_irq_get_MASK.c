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
struct gpio_desc {int dummy; } ;
struct acpi_gpio_info {int /*<<< orphan*/  polarity; int /*<<< orphan*/  triggering; int /*<<< orphan*/  flags; scalar_t__ gpioint; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  label ;

/* Variables and functions */
 int ENOENT ; 
 int EPROBE_DEFER ; 
 unsigned long GPIO_LOOKUP_FLAGS_DEFAULT ; 
 unsigned int IRQ_TYPE_NONE ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC3 (struct acpi_device*,int /*<<< orphan*/ *,int,struct acpi_gpio_info*) ; 
 int FUNC4 (struct gpio_desc*,char*,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct gpio_desc*) ; 
 unsigned int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 

int FUNC9(struct acpi_device *adev, int index)
{
	int idx, i;
	unsigned int irq_flags;
	int ret;

	for (i = 0, idx = 0; idx <= index; i++) {
		struct acpi_gpio_info info;
		struct gpio_desc *desc;

		desc = FUNC3(adev, NULL, i, &info);

		/* Ignore -EPROBE_DEFER, it only matters if idx matches */
		if (FUNC0(desc) && FUNC1(desc) != -EPROBE_DEFER)
			return FUNC1(desc);

		if (info.gpioint && idx++ == index) {
			unsigned long lflags = GPIO_LOOKUP_FLAGS_DEFAULT;
			char label[32];
			int irq;

			if (FUNC0(desc))
				return FUNC1(desc);

			irq = FUNC5(desc);
			if (irq < 0)
				return irq;

			FUNC8(label, sizeof(label), "GpioInt() %d", index);
			ret = FUNC4(desc, label, lflags, info.flags);
			if (ret < 0)
				return ret;

			irq_flags = FUNC2(info.triggering,
							  info.polarity);

			/* Set type if specified and different than the current one */
			if (irq_flags != IRQ_TYPE_NONE &&
			    irq_flags != FUNC6(irq))
				FUNC7(irq, irq_flags);

			return irq;
		}

	}
	return -ENOENT;
}