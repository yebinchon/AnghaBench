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
struct gpio_chip {int /*<<< orphan*/  parent; } ;
struct adnp {int reg_shift; int* irq_enable; int* irq_level; int* irq_rise; int* irq_fall; int* irq_high; int* irq_low; TYPE_1__* client; int /*<<< orphan*/  irq_lock; struct gpio_chip gpio; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct adnp*) ; 
 scalar_t__ FUNC1 (struct adnp*) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 int /*<<< orphan*/  adnp_irq ; 
 int /*<<< orphan*/  adnp_irq_chip ; 
 int FUNC2 (struct adnp*,scalar_t__,int*) ; 
 int FUNC3 (struct adnp*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int* FUNC6 (int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct adnp*) ; 
 int FUNC8 (struct gpio_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gpio_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct adnp *adnp)
{
	unsigned int num_regs = 1 << adnp->reg_shift, i;
	struct gpio_chip *chip = &adnp->gpio;
	int err;

	FUNC10(&adnp->irq_lock);

	/*
	 * Allocate memory to keep track of the current level and trigger
	 * modes of the interrupts. To avoid multiple allocations, a single
	 * large buffer is allocated and pointers are setup to point at the
	 * corresponding offsets. For consistency, the layout of the buffer
	 * is chosen to match the register layout of the hardware in that
	 * each segment contains the corresponding bits for all interrupts.
	 */
	adnp->irq_enable = FUNC6(chip->parent, num_regs, 6,
					GFP_KERNEL);
	if (!adnp->irq_enable)
		return -ENOMEM;

	adnp->irq_level = adnp->irq_enable + (num_regs * 1);
	adnp->irq_rise = adnp->irq_enable + (num_regs * 2);
	adnp->irq_fall = adnp->irq_enable + (num_regs * 3);
	adnp->irq_high = adnp->irq_enable + (num_regs * 4);
	adnp->irq_low = adnp->irq_enable + (num_regs * 5);

	for (i = 0; i < num_regs; i++) {
		/*
		 * Read the initial level of all pins to allow the emulation
		 * of edge triggered interrupts.
		 */
		err = FUNC2(adnp, FUNC1(adnp) + i, &adnp->irq_level[i]);
		if (err < 0)
			return err;

		/* disable all interrupts */
		err = FUNC3(adnp, FUNC0(adnp) + i, 0);
		if (err < 0)
			return err;

		adnp->irq_enable[i] = 0x00;
	}

	err = FUNC7(chip->parent, adnp->client->irq,
					NULL, adnp_irq,
					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
					FUNC5(chip->parent), adnp);
	if (err != 0) {
		FUNC4(chip->parent, "can't request IRQ#%d: %d\n",
			adnp->client->irq, err);
		return err;
	}

	err = FUNC8(chip,
					  &adnp_irq_chip,
					  0,
					  handle_simple_irq,
					  IRQ_TYPE_NONE);
	if (err) {
		FUNC4(chip->parent,
			"could not connect irqchip to gpiochip\n");
		return err;
	}

	FUNC9(chip, &adnp_irq_chip, adnp->client->irq);

	return 0;
}