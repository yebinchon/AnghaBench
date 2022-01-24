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
struct mvebu_gpio_chip {int soc_variant; int /*<<< orphan*/ * level_mask_regs; int /*<<< orphan*/  regs; int /*<<< orphan*/ * edge_mask_regs; scalar_t__ offset; int /*<<< orphan*/  in_pol_reg; int /*<<< orphan*/  blink_en_reg; int /*<<< orphan*/  io_conf_reg; int /*<<< orphan*/  out_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CONFIG_PWM ; 
 scalar_t__ GPIO_BLINK_EN_OFF ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ GPIO_EDGE_MASK_OFF ; 
 scalar_t__ GPIO_IN_POL_OFF ; 
 scalar_t__ GPIO_IO_CONF_OFF ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ GPIO_LEVEL_MASK_OFF ; 
 scalar_t__ GPIO_OUT_OFF ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
#define  MVEBU_GPIO_SOC_VARIANT_A8K 131 
#define  MVEBU_GPIO_SOC_VARIANT_ARMADAXP 130 
#define  MVEBU_GPIO_SOC_VARIANT_MV78200 129 
#define  MVEBU_GPIO_SOC_VARIANT_ORION 128 
 int /*<<< orphan*/  FUNC6 (struct mvebu_gpio_chip*) ; 
 struct mvebu_gpio_chip* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct mvebu_gpio_chip *mvchip = FUNC7(pdev);
	int i;

	FUNC8(mvchip->regs, GPIO_OUT_OFF + mvchip->offset,
		     mvchip->out_reg);
	FUNC8(mvchip->regs, GPIO_IO_CONF_OFF + mvchip->offset,
		     mvchip->io_conf_reg);
	FUNC8(mvchip->regs, GPIO_BLINK_EN_OFF + mvchip->offset,
		     mvchip->blink_en_reg);
	FUNC8(mvchip->regs, GPIO_IN_POL_OFF + mvchip->offset,
		     mvchip->in_pol_reg);

	switch (mvchip->soc_variant) {
	case MVEBU_GPIO_SOC_VARIANT_ORION:
	case MVEBU_GPIO_SOC_VARIANT_A8K:
		FUNC8(mvchip->regs, GPIO_EDGE_MASK_OFF + mvchip->offset,
			     mvchip->edge_mask_regs[0]);
		FUNC8(mvchip->regs, GPIO_LEVEL_MASK_OFF + mvchip->offset,
			     mvchip->level_mask_regs[0]);
		break;
	case MVEBU_GPIO_SOC_VARIANT_MV78200:
		for (i = 0; i < 2; i++) {
			FUNC8(mvchip->regs,
				     FUNC2(i),
				     mvchip->edge_mask_regs[i]);
			FUNC8(mvchip->regs,
				     FUNC4(i),
				     mvchip->level_mask_regs[i]);
		}
		break;
	case MVEBU_GPIO_SOC_VARIANT_ARMADAXP:
		for (i = 0; i < 4; i++) {
			FUNC8(mvchip->regs,
				     FUNC1(i),
				     mvchip->edge_mask_regs[i]);
			FUNC8(mvchip->regs,
				     FUNC3(i),
				     mvchip->level_mask_regs[i]);
		}
		break;
	default:
		FUNC0();
	}

	if (FUNC5(CONFIG_PWM))
		FUNC6(mvchip);

	return 0;
}