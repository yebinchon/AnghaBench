#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* label; int base; int /*<<< orphan*/  get_multiple; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  get_direction; int /*<<< orphan*/  names; int /*<<< orphan*/  ngpio; int /*<<< orphan*/  owner; struct device* parent; } ;
struct idi_48_gpio {TYPE_1__ chip; int /*<<< orphan*/  ack_lock; int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IDI48_NGPIO ; 
 scalar_t__ IDI_48_EXTENT ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__* base ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 char* FUNC1 (struct device*) ; 
 int FUNC2 (struct device*,TYPE_1__*,struct idi_48_gpio*) ; 
 struct idi_48_gpio* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const* const,struct idi_48_gpio*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,scalar_t__,scalar_t__,char const* const) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  idi48_names ; 
 int /*<<< orphan*/  idi_48_gpio_direction_input ; 
 int /*<<< orphan*/  idi_48_gpio_get ; 
 int /*<<< orphan*/  idi_48_gpio_get_direction ; 
 int /*<<< orphan*/  idi_48_gpio_get_multiple ; 
 int /*<<< orphan*/  idi_48_irq_handler ; 
 int /*<<< orphan*/  idi_48_irqchip ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/ * irq ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct device *dev, unsigned int id)
{
	struct idi_48_gpio *idi48gpio;
	const char *const name = FUNC1(dev);
	int err;

	idi48gpio = FUNC3(dev, sizeof(*idi48gpio), GFP_KERNEL);
	if (!idi48gpio)
		return -ENOMEM;

	if (!FUNC5(dev, base[id], IDI_48_EXTENT, name)) {
		FUNC0(dev, "Unable to lock port addresses (0x%X-0x%X)\n",
			base[id], base[id] + IDI_48_EXTENT);
		return -EBUSY;
	}

	idi48gpio->chip.label = name;
	idi48gpio->chip.parent = dev;
	idi48gpio->chip.owner = THIS_MODULE;
	idi48gpio->chip.base = -1;
	idi48gpio->chip.ngpio = IDI48_NGPIO;
	idi48gpio->chip.names = idi48_names;
	idi48gpio->chip.get_direction = idi_48_gpio_get_direction;
	idi48gpio->chip.direction_input = idi_48_gpio_direction_input;
	idi48gpio->chip.get = idi_48_gpio_get;
	idi48gpio->chip.get_multiple = idi_48_gpio_get_multiple;
	idi48gpio->base = base[id];

	FUNC9(&idi48gpio->lock);
	FUNC10(&idi48gpio->ack_lock);

	err = FUNC2(dev, &idi48gpio->chip, idi48gpio);
	if (err) {
		FUNC0(dev, "GPIO registering failed (%d)\n", err);
		return err;
	}

	/* Disable IRQ by default */
	FUNC8(0, base[id] + 7);
	FUNC7(base[id] + 7);

	err = FUNC6(&idi48gpio->chip, &idi_48_irqchip, 0,
		handle_edge_irq, IRQ_TYPE_NONE);
	if (err) {
		FUNC0(dev, "Could not add irqchip (%d)\n", err);
		return err;
	}

	err = FUNC4(dev, irq[id], idi_48_irq_handler, IRQF_SHARED,
		name, idi48gpio);
	if (err) {
		FUNC0(dev, "IRQ handler registering failed (%d)\n", err);
		return err;
	}

	return 0;
}