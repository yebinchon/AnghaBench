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
struct lp_gpio {TYPE_1__* pdev; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int EBUSY ; 
 int ENODEV ; 
 int GPINDIS_BIT ; 
 int /*<<< orphan*/  LP_ACPI_OWNED ; 
 int /*<<< orphan*/  LP_CONFIG1 ; 
 int /*<<< orphan*/  LP_CONFIG2 ; 
 int USE_SEL_BIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 struct lp_gpio* FUNC2 (struct gpio_chip*) ; 
 int FUNC3 (unsigned long) ; 
 unsigned long FUNC4 (struct gpio_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct gpio_chip *chip, unsigned offset)
{
	struct lp_gpio *lg = FUNC2(chip);
	unsigned long reg = FUNC4(chip, offset, LP_CONFIG1);
	unsigned long conf2 = FUNC4(chip, offset, LP_CONFIG2);
	unsigned long acpi_use = FUNC4(chip, offset, LP_ACPI_OWNED);

	FUNC6(&lg->pdev->dev); /* should we put if failed */

	/* Fail if BIOS reserved pin for ACPI use */
	if (!(FUNC3(acpi_use) & FUNC0(offset % 32))) {
		FUNC1(&lg->pdev->dev, "gpio %d reserved for ACPI\n", offset);
		return -EBUSY;
	}
	/* Fail if pin is in alternate function mode (not GPIO mode) */
	if (!(FUNC3(reg) & USE_SEL_BIT))
		return -ENODEV;

	/* enable input sensing */
	FUNC5(FUNC3(conf2) & ~GPINDIS_BIT, conf2);


	return 0;
}