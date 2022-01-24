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
struct tegra_gpio_info {int dummy; } ;
struct tegra_gpio_bank {struct tegra_gpio_info* tgi; } ;
struct irq_data {unsigned int hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tegra_gpio_info*,unsigned int) ; 
 struct tegra_gpio_bank* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_gpio_info*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	struct tegra_gpio_bank *bank = FUNC1(d);
	struct tegra_gpio_info *tgi = bank->tgi;
	unsigned int gpio = d->hwirq;

	FUNC2(tgi, FUNC0(tgi, gpio), gpio, 0);
}