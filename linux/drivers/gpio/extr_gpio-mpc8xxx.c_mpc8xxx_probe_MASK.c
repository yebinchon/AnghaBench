#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mpc8xxx_gpio_devtype {int /*<<< orphan*/  (* gpio_dir_in_init ) (struct gpio_chip*) ;scalar_t__ gpio_get; scalar_t__ gpio_dir_out; int /*<<< orphan*/  irq_set_type; } ;
struct gpio_chip {int /*<<< orphan*/  (* write_reg ) (scalar_t__,int) ;int /*<<< orphan*/  to_irq; scalar_t__ get; scalar_t__ direction_output; } ;
struct mpc8xxx_gpio_chip {scalar_t__ regs; int /*<<< orphan*/  irqn; int /*<<< orphan*/  irq; scalar_t__ direction_output; struct gpio_chip gc; int /*<<< orphan*/  lock; } ;
struct device_node {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  irq_set_type; } ;

/* Variables and functions */
 int BGPIOF_BIG_ENDIAN ; 
 int BGPIOF_BIG_ENDIAN_BYTE_ORDER ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ GPIO_DAT ; 
 scalar_t__ GPIO_DIR ; 
 scalar_t__ GPIO_IER ; 
 scalar_t__ GPIO_IMR ; 
 int /*<<< orphan*/  MPC8XXX_GPIO_PINS ; 
 int FUNC0 (struct gpio_chip*,TYPE_1__*,int,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 struct mpc8xxx_gpio_chip* FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct gpio_chip*,struct mpc8xxx_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mpc8xxx_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mpc8xxx_gpio_chip*) ; 
 struct mpc8xxx_gpio_devtype mpc8xxx_gpio_devtype_default ; 
 int /*<<< orphan*/  mpc8xxx_gpio_irq_cascade ; 
 int /*<<< orphan*/  mpc8xxx_gpio_irq_ops ; 
 int /*<<< orphan*/  mpc8xxx_gpio_to_irq ; 
 TYPE_2__ mpc8xxx_irq_chip ; 
 struct mpc8xxx_gpio_devtype* FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (struct device_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct mpc8xxx_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC12 (char*,struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct mpc8xxx_gpio_chip *mpc8xxx_gc;
	struct gpio_chip	*gc;
	const struct mpc8xxx_gpio_devtype *devtype =
		FUNC8(&pdev->dev);
	int ret;

	mpc8xxx_gc = FUNC2(&pdev->dev, sizeof(*mpc8xxx_gc), GFP_KERNEL);
	if (!mpc8xxx_gc)
		return -ENOMEM;

	FUNC11(pdev, mpc8xxx_gc);

	FUNC13(&mpc8xxx_gc->lock);

	mpc8xxx_gc->regs = FUNC9(np, 0);
	if (!mpc8xxx_gc->regs)
		return -ENOMEM;

	gc = &mpc8xxx_gc->gc;

	if (FUNC10(np, "little-endian")) {
		ret = FUNC0(gc, &pdev->dev, 4,
				 mpc8xxx_gc->regs + GPIO_DAT,
				 NULL, NULL,
				 mpc8xxx_gc->regs + GPIO_DIR, NULL,
				 BGPIOF_BIG_ENDIAN);
		if (ret)
			goto err;
		FUNC1(&pdev->dev, "GPIO registers are LITTLE endian\n");
	} else {
		ret = FUNC0(gc, &pdev->dev, 4,
				 mpc8xxx_gc->regs + GPIO_DAT,
				 NULL, NULL,
				 mpc8xxx_gc->regs + GPIO_DIR, NULL,
				 BGPIOF_BIG_ENDIAN
				 | BGPIOF_BIG_ENDIAN_BYTE_ORDER);
		if (ret)
			goto err;
		FUNC1(&pdev->dev, "GPIO registers are BIG endian\n");
	}

	mpc8xxx_gc->direction_output = gc->direction_output;

	if (!devtype)
		devtype = &mpc8xxx_gpio_devtype_default;

	/*
	 * It's assumed that only a single type of gpio controller is available
	 * on the current machine, so overwriting global data is fine.
	 */
	mpc8xxx_irq_chip.irq_set_type = devtype->irq_set_type;

	if (devtype->gpio_dir_out)
		gc->direction_output = devtype->gpio_dir_out;
	if (devtype->gpio_get)
		gc->get = devtype->gpio_get;

	gc->to_irq = mpc8xxx_gpio_to_irq;

	ret = FUNC3(gc, mpc8xxx_gc);
	if (ret) {
		FUNC12("%pOF: GPIO chip registration failed with status %d\n",
		       np, ret);
		goto err;
	}

	mpc8xxx_gc->irqn = FUNC6(np, 0);
	if (!mpc8xxx_gc->irqn)
		return 0;

	mpc8xxx_gc->irq = FUNC5(np, MPC8XXX_GPIO_PINS,
					&mpc8xxx_gpio_irq_ops, mpc8xxx_gc);
	if (!mpc8xxx_gc->irq)
		return 0;

	/* ack and mask all irqs */
	gc->write_reg(mpc8xxx_gc->regs + GPIO_IER, 0xffffffff);
	gc->write_reg(mpc8xxx_gc->regs + GPIO_IMR, 0);
	/* enable input buffer  */
	if (devtype->gpio_dir_in_init)
		devtype->gpio_dir_in_init(gc);

	FUNC7(mpc8xxx_gc->irqn,
					 mpc8xxx_gpio_irq_cascade, mpc8xxx_gc);
	return 0;
err:
	FUNC4(mpc8xxx_gc->regs);
	return ret;
}