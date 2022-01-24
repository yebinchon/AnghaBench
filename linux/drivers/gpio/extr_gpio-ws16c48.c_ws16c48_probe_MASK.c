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
struct ws16c48_gpio {TYPE_1__ chip; int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ WS16C48_EXTENT ; 
 int /*<<< orphan*/  WS16C48_NGPIO ; 
 scalar_t__* base ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 char* FUNC1 (struct device*) ; 
 int FUNC2 (struct device*,TYPE_1__*,struct ws16c48_gpio*) ; 
 struct ws16c48_gpio* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const* const,struct ws16c48_gpio*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,scalar_t__,scalar_t__,char const* const) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/ * irq ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ws16c48_gpio_direction_input ; 
 int /*<<< orphan*/  ws16c48_gpio_direction_output ; 
 int /*<<< orphan*/  ws16c48_gpio_get ; 
 int /*<<< orphan*/  ws16c48_gpio_get_direction ; 
 int /*<<< orphan*/  ws16c48_gpio_get_multiple ; 
 int /*<<< orphan*/  ws16c48_gpio_set ; 
 int /*<<< orphan*/  ws16c48_gpio_set_multiple ; 
 int /*<<< orphan*/  ws16c48_irq_handler ; 
 int /*<<< orphan*/  ws16c48_irqchip ; 
 int /*<<< orphan*/  ws16c48_names ; 

__attribute__((used)) static int FUNC9(struct device *dev, unsigned int id)
{
	struct ws16c48_gpio *ws16c48gpio;
	const char *const name = FUNC1(dev);
	int err;

	ws16c48gpio = FUNC3(dev, sizeof(*ws16c48gpio), GFP_KERNEL);
	if (!ws16c48gpio)
		return -ENOMEM;

	if (!FUNC5(dev, base[id], WS16C48_EXTENT, name)) {
		FUNC0(dev, "Unable to lock port addresses (0x%X-0x%X)\n",
			base[id], base[id] + WS16C48_EXTENT);
		return -EBUSY;
	}

	ws16c48gpio->chip.label = name;
	ws16c48gpio->chip.parent = dev;
	ws16c48gpio->chip.owner = THIS_MODULE;
	ws16c48gpio->chip.base = -1;
	ws16c48gpio->chip.ngpio = WS16C48_NGPIO;
	ws16c48gpio->chip.names = ws16c48_names;
	ws16c48gpio->chip.get_direction = ws16c48_gpio_get_direction;
	ws16c48gpio->chip.direction_input = ws16c48_gpio_direction_input;
	ws16c48gpio->chip.direction_output = ws16c48_gpio_direction_output;
	ws16c48gpio->chip.get = ws16c48_gpio_get;
	ws16c48gpio->chip.get_multiple = ws16c48_gpio_get_multiple;
	ws16c48gpio->chip.set = ws16c48_gpio_set;
	ws16c48gpio->chip.set_multiple = ws16c48_gpio_set_multiple;
	ws16c48gpio->base = base[id];

	FUNC8(&ws16c48gpio->lock);

	err = FUNC2(dev, &ws16c48gpio->chip, ws16c48gpio);
	if (err) {
		FUNC0(dev, "GPIO registering failed (%d)\n", err);
		return err;
	}

	/* Disable IRQ by default */
	FUNC7(0x80, base[id] + 7);
	FUNC7(0, base[id] + 8);
	FUNC7(0, base[id] + 9);
	FUNC7(0, base[id] + 10);
	FUNC7(0xC0, base[id] + 7);

	err = FUNC6(&ws16c48gpio->chip, &ws16c48_irqchip, 0,
		handle_edge_irq, IRQ_TYPE_NONE);
	if (err) {
		FUNC0(dev, "Could not add irqchip (%d)\n", err);
		return err;
	}

	err = FUNC4(dev, irq[id], ws16c48_irq_handler, IRQF_SHARED,
		name, ws16c48gpio);
	if (err) {
		FUNC0(dev, "IRQ handler registering failed (%d)\n", err);
		return err;
	}

	return 0;
}