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
typedef  int u8 ;
struct sun4i_tcon {int /*<<< orphan*/  regs; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUN4I_TCON0_LVDS_ANA0_REG ; 
 int /*<<< orphan*/  SUN4I_TCON0_LVDS_IF_EN ; 
 int /*<<< orphan*/  SUN4I_TCON0_LVDS_IF_REG ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  SUN6I_TCON0_LVDS_ANA0_EN_DRVC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int SUN6I_TCON0_LVDS_ANA0_EN_LDO ; 
 int /*<<< orphan*/  SUN6I_TCON0_LVDS_ANA0_EN_MB ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct drm_encoder const*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct sun4i_tcon *tcon,
				       const struct drm_encoder *encoder,
				       bool enabled)
{
	if (enabled) {
		u8 val;

		FUNC4(tcon->regs, SUN4I_TCON0_LVDS_IF_REG,
				   SUN4I_TCON0_LVDS_IF_EN,
				   SUN4I_TCON0_LVDS_IF_EN);

		/*
		 * As their name suggest, these values only apply to the A31
		 * and later SoCs. We'll have to rework this when merging
		 * support for the older SoCs.
		 */
		FUNC5(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
			     FUNC0(2) |
			     FUNC3(3) |
			     FUNC2(2) |
			     SUN6I_TCON0_LVDS_ANA0_EN_LDO);
		FUNC8(2);

		FUNC4(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
				   SUN6I_TCON0_LVDS_ANA0_EN_MB,
				   SUN6I_TCON0_LVDS_ANA0_EN_MB);
		FUNC8(2);

		FUNC4(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
				   SUN6I_TCON0_LVDS_ANA0_EN_DRVC,
				   SUN6I_TCON0_LVDS_ANA0_EN_DRVC);

		if (FUNC7(encoder) == 18)
			val = 7;
		else
			val = 0xf;

		FUNC6(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
				  FUNC1(0xf),
				  FUNC1(val));
	} else {
		FUNC4(tcon->regs, SUN4I_TCON0_LVDS_IF_REG,
				   SUN4I_TCON0_LVDS_IF_EN, 0);
	}
}