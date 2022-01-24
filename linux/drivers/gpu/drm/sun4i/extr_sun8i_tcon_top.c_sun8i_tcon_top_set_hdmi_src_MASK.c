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
 scalar_t__ TCON_TOP_GATE_SRC_REG ; 
 int /*<<< orphan*/  TCON_TOP_HDMI_SRC_MSK ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct sun8i_tcon_top* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC8(struct device *dev, int tcon)
{
	struct sun8i_tcon_top *tcon_top = FUNC2(dev);
	unsigned long flags;
	u32 val;

	if (!FUNC6(dev->of_node)) {
		FUNC1(dev, "Device is not TCON TOP!\n");
		return -EINVAL;
	}

	if (tcon < 2 || tcon > 3) {
		FUNC1(dev, "TCON index must be 2 or 3!\n");
		return -EINVAL;
	}

	FUNC4(&tcon_top->reg_lock, flags);

	val = FUNC3(tcon_top->regs + TCON_TOP_GATE_SRC_REG);
	val &= ~TCON_TOP_HDMI_SRC_MSK;
	val |= FUNC0(TCON_TOP_HDMI_SRC_MSK, tcon - 1);
	FUNC7(val, tcon_top->regs + TCON_TOP_GATE_SRC_REG);

	FUNC5(&tcon_top->reg_lock, flags);

	return 0;
}