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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct input_dev {int dummy; } ;
struct gpio_keys_drvdata {int /*<<< orphan*/ * keymap; struct gpio_button_data* data; } ;
struct gpio_keys_button {char* desc; int gpio; int debounce_interval; int irq; int wakeup_event_action; scalar_t__ type; int /*<<< orphan*/  can_disable; int /*<<< orphan*/  code; scalar_t__ active_low; } ;
struct gpio_button_data {int software_debounce; int irq; int release_delay; int /*<<< orphan*/ * code; int /*<<< orphan*/  release_timer; void* wakeup_trigger_type; int /*<<< orphan*/  work; int /*<<< orphan*/ * gpiod; int /*<<< orphan*/  lock; struct gpio_keys_button const* button; struct input_dev* input; } ;
struct fwnode_handle {int dummy; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int EPROBE_DEFER ; 
#define  EV_ACT_ANY 130 
#define  EV_ACT_ASSERTED 129 
#define  EV_ACT_DEASSERTED 128 
 scalar_t__ EV_KEY ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 unsigned int GPIOF_ACTIVE_LOW ; 
 unsigned int GPIOF_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long IRQF_SHARED ; 
 unsigned long IRQF_TRIGGER_FALLING ; 
 unsigned long IRQF_TRIGGER_RISING ; 
 void* IRQ_TYPE_EDGE_FALLING ; 
 void* IRQ_TYPE_EDGE_RISING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,struct gpio_button_data*) ; 
 int /*<<< orphan*/ * FUNC5 (struct device*,int /*<<< orphan*/ *,struct fwnode_handle*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC6 (struct device*,int,unsigned int,char const*) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ ,unsigned long,char const*,struct gpio_button_data*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  gpio_keys_gpio_isr ; 
 int /*<<< orphan*/  gpio_keys_gpio_work_func ; 
 int /*<<< orphan*/  gpio_keys_irq_isr ; 
 int /*<<< orphan*/  gpio_keys_irq_timer ; 
 int /*<<< orphan*/  gpio_keys_quiesce_key ; 
 int /*<<< orphan*/ * FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct input_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev,
				struct input_dev *input,
				struct gpio_keys_drvdata *ddata,
				const struct gpio_keys_button *button,
				int idx,
				struct fwnode_handle *child)
{
	const char *desc = button->desc ? button->desc : "gpio_keys";
	struct device *dev = &pdev->dev;
	struct gpio_button_data *bdata = &ddata->data[idx];
	irq_handler_t isr;
	unsigned long irqflags;
	int irq;
	int error;

	bdata->input = input;
	bdata->button = button;
	FUNC14(&bdata->lock);

	if (child) {
		bdata->gpiod = FUNC5(dev, NULL,
								child,
								GPIOD_IN,
								desc);
		if (FUNC1(bdata->gpiod)) {
			error = FUNC2(bdata->gpiod);
			if (error == -ENOENT) {
				/*
				 * GPIO is optional, we may be dealing with
				 * purely interrupt-driven setup.
				 */
				bdata->gpiod = NULL;
			} else {
				if (error != -EPROBE_DEFER)
					FUNC3(dev, "failed to get gpio: %d\n",
						error);
				return error;
			}
		}
	} else if (FUNC8(button->gpio)) {
		/*
		 * Legacy GPIO number, so request the GPIO here and
		 * convert it to descriptor.
		 */
		unsigned flags = GPIOF_IN;

		if (button->active_low)
			flags |= GPIOF_ACTIVE_LOW;

		error = FUNC6(dev, button->gpio, flags, desc);
		if (error < 0) {
			FUNC3(dev, "Failed to request GPIO %d, error %d\n",
				button->gpio, error);
			return error;
		}

		bdata->gpiod = FUNC9(button->gpio);
		if (!bdata->gpiod)
			return -EINVAL;
	}

	if (bdata->gpiod) {
		bool active_low = FUNC10(bdata->gpiod);

		if (button->debounce_interval) {
			error = FUNC11(bdata->gpiod,
					button->debounce_interval * 1000);
			/* use timer if gpiolib doesn't provide debounce */
			if (error < 0)
				bdata->software_debounce =
						button->debounce_interval;
		}

		if (button->irq) {
			bdata->irq = button->irq;
		} else {
			irq = FUNC12(bdata->gpiod);
			if (irq < 0) {
				error = irq;
				FUNC3(dev,
					"Unable to get irq number for GPIO %d, error %d\n",
					button->gpio, error);
				return error;
			}
			bdata->irq = irq;
		}

		FUNC0(&bdata->work, gpio_keys_gpio_work_func);

		isr = gpio_keys_gpio_isr;
		irqflags = IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING;

		switch (button->wakeup_event_action) {
		case EV_ACT_ASSERTED:
			bdata->wakeup_trigger_type = active_low ?
				IRQ_TYPE_EDGE_FALLING : IRQ_TYPE_EDGE_RISING;
			break;
		case EV_ACT_DEASSERTED:
			bdata->wakeup_trigger_type = active_low ?
				IRQ_TYPE_EDGE_RISING : IRQ_TYPE_EDGE_FALLING;
			break;
		case EV_ACT_ANY:
			/* fall through */
		default:
			/*
			 * For other cases, we are OK letting suspend/resume
			 * not reconfigure the trigger type.
			 */
			break;
		}
	} else {
		if (!button->irq) {
			FUNC3(dev, "Found button without gpio or irq\n");
			return -EINVAL;
		}

		bdata->irq = button->irq;

		if (button->type && button->type != EV_KEY) {
			FUNC3(dev, "Only EV_KEY allowed for IRQ buttons.\n");
			return -EINVAL;
		}

		bdata->release_delay = button->debounce_interval;
		FUNC15(&bdata->release_timer, gpio_keys_irq_timer, 0);

		isr = gpio_keys_irq_isr;
		irqflags = 0;

		/*
		 * For IRQ buttons, there is no interrupt for release.
		 * So we don't need to reconfigure the trigger type for wakeup.
		 */
	}

	bdata->code = &ddata->keymap[idx];
	*bdata->code = button->code;
	FUNC13(input, button->type ?: EV_KEY, *bdata->code);

	/*
	 * Install custom action to cancel release timer and
	 * workqueue item.
	 */
	error = FUNC4(dev, gpio_keys_quiesce_key, bdata);
	if (error) {
		FUNC3(dev, "failed to register quiesce action, error: %d\n",
			error);
		return error;
	}

	/*
	 * If platform has specified that the button can be disabled,
	 * we don't want it to share the interrupt line.
	 */
	if (!button->can_disable)
		irqflags |= IRQF_SHARED;

	error = FUNC7(dev, bdata->irq, isr, irqflags,
					     desc, bdata);
	if (error < 0) {
		FUNC3(dev, "Unable to claim irq %d; error %d\n",
			bdata->irq, error);
		return error;
	}

	return 0;
}