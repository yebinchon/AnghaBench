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
struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; struct device dev; } ;
struct TYPE_5__ {char* label; int base; int /*<<< orphan*/  set_multiple; int /*<<< orphan*/  set; int /*<<< orphan*/  get_multiple; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  get_direction; int /*<<< orphan*/  names; int /*<<< orphan*/  ngpio; int /*<<< orphan*/  owner; struct device* parent; } ;
struct idio_16_gpio {TYPE_2__ chip; TYPE_1__* reg; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  in0_7; int /*<<< orphan*/  irq_ctl; int /*<<< orphan*/  filter_ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t const) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IDIO_16_NGPIO ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (struct device* const,char*,int) ; 
 int FUNC2 (struct device* const,TYPE_2__*,struct idio_16_gpio*) ; 
 struct idio_16_gpio* FUNC3 (struct device* const,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const* const,struct idio_16_gpio*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
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
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC7 (struct pci_dev*) ; 
 int FUNC8 (struct pci_dev*) ; 
 int FUNC9 (struct pci_dev*,int /*<<< orphan*/ ,char const* const) ; 
 TYPE_1__** FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct device *const dev = &pdev->dev;
	struct idio_16_gpio *idio16gpio;
	int err;
	const size_t pci_bar_index = 2;
	const char *const name = FUNC7(pdev);

	idio16gpio = FUNC3(dev, sizeof(*idio16gpio), GFP_KERNEL);
	if (!idio16gpio)
		return -ENOMEM;

	err = FUNC8(pdev);
	if (err) {
		FUNC1(dev, "Failed to enable PCI device (%d)\n", err);
		return err;
	}

	err = FUNC9(pdev, FUNC0(pci_bar_index), name);
	if (err) {
		FUNC1(dev, "Unable to map PCI I/O addresses (%d)\n", err);
		return err;
	}

	idio16gpio->reg = FUNC10(pdev)[pci_bar_index];

	/* Deactivate input filters */
	FUNC6(0, &idio16gpio->reg->filter_ctl);

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

	FUNC11(&idio16gpio->lock);

	err = FUNC2(dev, &idio16gpio->chip, idio16gpio);
	if (err) {
		FUNC1(dev, "GPIO registering failed (%d)\n", err);
		return err;
	}

	/* Disable IRQ by default and clear any pending interrupt */
	FUNC6(0, &idio16gpio->reg->irq_ctl);
	FUNC6(0, &idio16gpio->reg->in0_7);

	err = FUNC5(&idio16gpio->chip, &idio_16_irqchip, 0,
		handle_edge_irq, IRQ_TYPE_NONE);
	if (err) {
		FUNC1(dev, "Could not add irqchip (%d)\n", err);
		return err;
	}

	err = FUNC4(dev, pdev->irq, idio_16_irq_handler, IRQF_SHARED,
		name, idio16gpio);
	if (err) {
		FUNC1(dev, "IRQ handler registering failed (%d)\n", err);
		return err;
	}

	return 0;
}