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
struct hibmc_drm_private {scalar_t__ mmio; } ;

/* Variables and functions */
 scalar_t__ HIBMC_CURRENT_GATE ; 
 unsigned int FUNC0 (int) ; 
 unsigned int HIBMC_CURR_GATE_DISPLAY_MASK ; 
 unsigned int FUNC1 (int) ; 
 unsigned int HIBMC_CURR_GATE_LOCALMEM_MASK ; 
 scalar_t__ HIBMC_MISC_CTRL ; 
 unsigned int FUNC2 (int) ; 
 unsigned int HIBMC_MSCCTL_LOCALMEM_RESET_MASK ; 
 int /*<<< orphan*/  HIBMC_PW_MODE_CTL_MODE_MODE0 ; 
 int /*<<< orphan*/  FUNC3 (struct hibmc_drm_private*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct hibmc_drm_private*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct hibmc_drm_private *priv)
{
	unsigned int reg;

	/* On hardware reset, power mode 0 is default. */
	FUNC4(priv, HIBMC_PW_MODE_CTL_MODE_MODE0);

	/* Enable display power gate & LOCALMEM power gate*/
	reg = FUNC5(priv->mmio + HIBMC_CURRENT_GATE);
	reg &= ~HIBMC_CURR_GATE_DISPLAY_MASK;
	reg &= ~HIBMC_CURR_GATE_LOCALMEM_MASK;
	reg |= FUNC0(1);
	reg |= FUNC1(1);

	FUNC3(priv, reg);

	/*
	 * Reset the memory controller. If the memory controller
	 * is not reset in chip,the system might hang when sw accesses
	 * the memory.The memory should be resetted after
	 * changing the MXCLK.
	 */
	reg = FUNC5(priv->mmio + HIBMC_MISC_CTRL);
	reg &= ~HIBMC_MSCCTL_LOCALMEM_RESET_MASK;
	reg |= FUNC2(0);
	FUNC6(reg, priv->mmio + HIBMC_MISC_CTRL);

	reg &= ~HIBMC_MSCCTL_LOCALMEM_RESET_MASK;
	reg |= FUNC2(1);

	FUNC6(reg, priv->mmio + HIBMC_MISC_CTRL);
}