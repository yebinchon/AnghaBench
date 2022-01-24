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
typedef  int /*<<< orphan*/  u32 ;
struct sun8i_tcon_top {int /*<<< orphan*/  reg_lock; scalar_t__ regs; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TCON_TOP_PORT_DE0_MSK ; 
 int /*<<< orphan*/  TCON_TOP_PORT_DE1_MSK ; 
 scalar_t__ TCON_TOP_PORT_SEL_REG ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct sun8i_tcon_top* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC8(struct device *dev, int mixer, int tcon)
{
	struct sun8i_tcon_top *tcon_top = FUNC2(dev);
	unsigned long flags;
	u32 reg;

	if (!FUNC6(dev->of_node)) {
		FUNC1(dev, "Device is not TCON TOP!\n");
		return -EINVAL;
	}

	if (mixer > 1) {
		FUNC1(dev, "Mixer index is too high!\n");
		return -EINVAL;
	}

	if (tcon > 3) {
		FUNC1(dev, "TCON index is too high!\n");
		return -EINVAL;
	}

	FUNC4(&tcon_top->reg_lock, flags);

	reg = FUNC3(tcon_top->regs + TCON_TOP_PORT_SEL_REG);
	if (mixer == 0) {
		reg &= ~TCON_TOP_PORT_DE0_MSK;
		reg |= FUNC0(TCON_TOP_PORT_DE0_MSK, tcon);
	} else {
		reg &= ~TCON_TOP_PORT_DE1_MSK;
		reg |= FUNC0(TCON_TOP_PORT_DE1_MSK, tcon);
	}
	FUNC7(reg, tcon_top->regs + TCON_TOP_PORT_SEL_REG);

	FUNC5(&tcon_top->reg_lock, flags);

	return 0;
}