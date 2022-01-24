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
struct brcmstb_i2c_dev {TYPE_1__* bsc_regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctl_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSC_CTL_REG_INT_EN_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct brcmstb_i2c_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctl_reg ; 

__attribute__((used)) static void FUNC2(struct brcmstb_i2c_dev *dev,
					   bool int_en)
{

	if (int_en)
		/* Enable BSC  CTL interrupt line */
		dev->bsc_regmap->ctl_reg |= BSC_CTL_REG_INT_EN_MASK;
	else
		/* Disable BSC CTL interrupt line */
		dev->bsc_regmap->ctl_reg &= ~BSC_CTL_REG_INT_EN_MASK;

	FUNC0();
	FUNC1(dev, dev->bsc_regmap->ctl_reg, ctl_reg);
}