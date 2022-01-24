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
struct TYPE_3__ {char* label; int base; int /*<<< orphan*/  set_multiple; int /*<<< orphan*/  set; int /*<<< orphan*/  get_multiple; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  get_direction; int /*<<< orphan*/  names; int /*<<< orphan*/  ngpio; int /*<<< orphan*/  owner; struct device* parent; } ;
struct idio_16_gpio {int out_state; TYPE_1__ chip; int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IDIO_16_EXTENT ; 
 int /*<<< orphan*/  IDIO_16_NGPIO ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__* base ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 char* FUNC1 (struct device*) ; 
 int FUNC2 (struct device*,TYPE_1__*,struct idio_16_gpio*) ; 
 struct idio_16_gpio* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const* const,struct idio_16_gpio*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,scalar_t__,scalar_t__,char const* const) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  idio_16_gpio_direction_input ; 
 int /*<<< orphan*/  idio_16_gpio_direction_output ; 
 int /*<<< orphan*/  idio_16_gpio_get ; 
 int /*<<< orphan*/  idio_16_gpio_get_direction ; 
 int /*<<< orphan*/  idio_16_gpio_get_multiple ; 
 int /*<<< orphan*/  idio_16_gpio_set ; 
 int /*<<< orphan*/  idio_16_gpio_set_multiple ; 
 int /*<<< orphan*/  idio_16_irq_handler ; 
 int /*<<< orphan*/  idio_16_irqchip ; 
 int /*<<< orphan*/  idio_16_names ; 
 int /*<<< orphan*/ * irq ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct device *dev, unsigned int id)
{
	struct idio_16_gpio *idio16gpio;
	const char *const name = FUNC1(dev);
	int err;

	idio16gpio = FUNC3(dev, sizeof(*idio16gpio), GFP_KERNEL);
	if (!idio16gpio)
		return -ENOMEM;

	if (!FUNC5(dev, base[id], IDIO_16_EXTENT, name)) {
		FUNC0(dev, "Unable to lock port addresses (0x%X-0x%X)\n",
			base[id], base[id] + IDIO_16_EXTENT);
		return -EBUSY;
	}

	idio16gpio->chip.label = name;
	idio16gpio->chip.parent = dev;
	idio16gpio->chip.owner = THIS_MODULE;
	idio16gpio->chip.base = -1;
	idio16gpio->chip.ngpio = IDIO_16_NGPIO;
	idio16gpio->chip.names = idio_16_names;
	idio16gpio->chip.get_direction = idio_16_gpio_get_direction;
	idio16gpio->chip.direction_input = idio_16_gpio_direction_input;
	idio16gpio->chip.direction_output = idio_16_gpio_direction_output;
	idio16gpio->chip.get = idio_16_gpio_get;
	idio16gpio->chip.get_multiple = idio_16_gpio_get_multiple;
	idio16gpio->chip.set = idio_16_gpio_set;
	idio16gpio->chip.set_multiple = idio_16_gpio_set_multiple;
	idio16gpio->base = base[id];
	idio16gpio->out_state = 0xFFFF;

	FUNC8(&idio16gpio->lock);

	err = FUNC2(dev, &idio16gpio->chip, idio16gpio);
	if (err) {
		FUNC0(dev, "GPIO registering failed (%d)\n", err);
		return err;
	}

	/* Disable IRQ by default */
	FUNC7(0, base[id] + 2);
	FUNC7(0, base[id] + 1);

	err = FUNC6(&idio16gpio->chip, &idio_16_irqchip, 0,
		handle_edge_irq, IRQ_TYPE_NONE);
	if (err) {
		FUNC0(dev, "Could not add irqchip (%d)\n", err);
		return err;
	}

	err = FUNC4(dev, irq[id], idio_16_irq_handler, 0, name,
		idio16gpio);
	if (err) {
		FUNC0(dev, "IRQ handler registering failed (%d)\n", err);
		return err;
	}

	return 0;
}