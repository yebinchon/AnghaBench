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
struct platform_device {int dummy; } ;
struct mpc8xxx_gpio_chip {int /*<<< orphan*/  regs; int /*<<< orphan*/  gc; scalar_t__ irq; int /*<<< orphan*/  irqn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mpc8xxx_gpio_chip* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct mpc8xxx_gpio_chip *mpc8xxx_gc = FUNC4(pdev);

	if (mpc8xxx_gc->irq) {
		FUNC3(mpc8xxx_gc->irqn, NULL, NULL);
		FUNC2(mpc8xxx_gc->irq);
	}

	FUNC0(&mpc8xxx_gc->gc);
	FUNC1(mpc8xxx_gc->regs);

	return 0;
}