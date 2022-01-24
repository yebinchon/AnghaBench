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
struct regmap {int dummy; } ;
struct mvebu_gpio_chip {int soc_variant; unsigned int offset; struct regmap* percpu_regs; struct regmap* regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 unsigned int GPIO_LEVEL_MASK_OFF ; 
#define  MVEBU_GPIO_SOC_VARIANT_A8K 131 
#define  MVEBU_GPIO_SOC_VARIANT_ARMADAXP 130 
#define  MVEBU_GPIO_SOC_VARIANT_MV78200 129 
#define  MVEBU_GPIO_SOC_VARIANT_ORION 128 
 int FUNC3 () ; 

__attribute__((used)) static void
FUNC4(struct mvebu_gpio_chip *mvchip,
			 struct regmap **map, unsigned int *offset)
{
	int cpu;

	switch (mvchip->soc_variant) {
	case MVEBU_GPIO_SOC_VARIANT_ORION:
	case MVEBU_GPIO_SOC_VARIANT_A8K:
		*map = mvchip->regs;
		*offset = GPIO_LEVEL_MASK_OFF + mvchip->offset;
		break;
	case MVEBU_GPIO_SOC_VARIANT_MV78200:
		cpu = FUNC3();
		*map = mvchip->regs;
		*offset = FUNC2(cpu);
		break;
	case MVEBU_GPIO_SOC_VARIANT_ARMADAXP:
		cpu = FUNC3();
		*map = mvchip->percpu_regs;
		*offset = FUNC1(cpu);
		break;
	default:
		FUNC0();
	}
}