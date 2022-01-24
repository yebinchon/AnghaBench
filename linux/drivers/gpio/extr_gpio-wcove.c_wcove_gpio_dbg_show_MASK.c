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
struct wcove_gpio {int /*<<< orphan*/  regmap; } ;
struct seq_file {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 unsigned int CTLI_INTCNT_NE ; 
 unsigned int CTLI_INTCNT_PE ; 
 unsigned int CTLO_DIR_OUT ; 
 int /*<<< orphan*/  CTRL_IN ; 
 int /*<<< orphan*/  CTRL_OUT ; 
 int GROUP0_NR_IRQS ; 
 scalar_t__ IRQ_MASK_BASE ; 
 scalar_t__ IRQ_STATUS_BASE ; 
 int WCOVE_GPIO_NUM ; 
 struct wcove_gpio* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int,char*,char*,char*,char*,unsigned int,char*,char*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct seq_file *s,
				      struct gpio_chip *chip)
{
	unsigned int ctlo, ctli, irq_mask, irq_status;
	struct wcove_gpio *wg = FUNC1(chip);
	int gpio, offset, group, ret = 0;

	for (gpio = 0; gpio < WCOVE_GPIO_NUM; gpio++) {
		group = gpio < GROUP0_NR_IRQS ? 0 : 1;
		ret += FUNC3(wg->regmap, FUNC5(gpio, CTRL_OUT), &ctlo);
		ret += FUNC3(wg->regmap, FUNC5(gpio, CTRL_IN), &ctli);
		ret += FUNC3(wg->regmap, IRQ_MASK_BASE + group,
							&irq_mask);
		ret += FUNC3(wg->regmap, IRQ_STATUS_BASE + group,
							&irq_status);
		if (ret) {
			FUNC2("Failed to read registers: ctrl out/in or irq status/mask\n");
			break;
		}

		offset = gpio % 8;
		FUNC4(s, " gpio-%-2d %s %s %s %s ctlo=%2x,%s %s\n",
			   gpio, ctlo & CTLO_DIR_OUT ? "out" : "in ",
			   ctli & 0x1 ? "hi" : "lo",
			   ctli & CTLI_INTCNT_NE ? "fall" : "    ",
			   ctli & CTLI_INTCNT_PE ? "rise" : "    ",
			   ctlo,
			   irq_mask & FUNC0(offset) ? "mask  " : "unmask",
			   irq_status & FUNC0(offset) ? "pending" : "       ");
	}
}