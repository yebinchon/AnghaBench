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
struct meson_drm {int /*<<< orphan*/  hhi; } ;

/* Variables and functions */
 int CTS_ENCI_EN ; 
 int CTS_ENCI_SEL_MASK ; 
 int CTS_ENCI_SEL_SHIFT ; 
 int CTS_VDAC_EN ; 
 int CTS_VDAC_SEL_MASK ; 
 int CTS_VDAC_SEL_SHIFT ; 
 unsigned int HDMI_PLL_LOCK ; 
 unsigned int HDMI_PLL_LOCK_G12A ; 
 int HDMI_PLL_RESET ; 
 int /*<<< orphan*/  HHI_HDMI_PLL_CNTL ; 
 int /*<<< orphan*/  HHI_HDMI_PLL_CNTL2 ; 
 int /*<<< orphan*/  HHI_HDMI_PLL_CNTL3 ; 
 int /*<<< orphan*/  HHI_HDMI_PLL_CNTL4 ; 
 int /*<<< orphan*/  HHI_HDMI_PLL_CNTL5 ; 
 int /*<<< orphan*/  HHI_HDMI_PLL_CNTL6 ; 
 int /*<<< orphan*/  HHI_HDMI_PLL_CNTL7 ; 
 int /*<<< orphan*/  HHI_VID_CLK_CNTL2 ; 
 int /*<<< orphan*/  HHI_VID_CLK_DIV ; 
 int /*<<< orphan*/  HHI_VIID_CLK_CNTL ; 
 int /*<<< orphan*/  HHI_VIID_CLK_DIV ; 
 int VCLK2_DIV1_EN ; 
 int VCLK2_DIV_EN ; 
 int VCLK2_DIV_MASK ; 
 int VCLK2_DIV_RESET ; 
 int VCLK2_EN ; 
 int VCLK2_SEL_MASK ; 
 int VCLK2_SEL_SHIFT ; 
 int VCLK2_SOFT_RESET ; 
 int /*<<< orphan*/  VID_PLL_DIV_1 ; 
 int /*<<< orphan*/  VPU_COMPATIBLE_G12A ; 
 int /*<<< orphan*/  VPU_COMPATIBLE_GXBB ; 
 int /*<<< orphan*/  VPU_COMPATIBLE_GXL ; 
 int /*<<< orphan*/  VPU_COMPATIBLE_GXM ; 
 int /*<<< orphan*/  FUNC0 (struct meson_drm*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct meson_drm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct meson_drm *priv)
{
	unsigned int val;

	/* Setup PLL to output 1.485GHz */
	if (FUNC1(priv, VPU_COMPATIBLE_GXBB)) {
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL, 0x5800023d);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL2, 0x00404e00);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL3, 0x0d5c5091);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL4, 0x801da72c);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL5, 0x71486980);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL6, 0x00000e55);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL, 0x4800023d);

		/* Poll for lock bit */
		FUNC2(priv->hhi, HHI_HDMI_PLL_CNTL, val,
					 (val & HDMI_PLL_LOCK), 10, 0);
	} else if (FUNC1(priv, VPU_COMPATIBLE_GXM) ||
		   FUNC1(priv, VPU_COMPATIBLE_GXL)) {
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL, 0x4000027b);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL2, 0x800cb300);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL3, 0xa6212844);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL4, 0x0c4d000c);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL5, 0x001fa729);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL6, 0x01a31500);

		/* Reset PLL */
		FUNC3(priv->hhi, HHI_HDMI_PLL_CNTL,
					HDMI_PLL_RESET, HDMI_PLL_RESET);
		FUNC3(priv->hhi, HHI_HDMI_PLL_CNTL,
					HDMI_PLL_RESET, 0);

		/* Poll for lock bit */
		FUNC2(priv->hhi, HHI_HDMI_PLL_CNTL, val,
					 (val & HDMI_PLL_LOCK), 10, 0);
	} else if (FUNC1(priv, VPU_COMPATIBLE_G12A)) {
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL, 0x1a0504f7);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL2, 0x00010000);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL3, 0x00000000);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL4, 0x6a28dc00);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL5, 0x65771290);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL6, 0x39272000);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL7, 0x56540000);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL, 0x3a0504f7);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL, 0x1a0504f7);

		/* Poll for lock bit */
		FUNC2(priv->hhi, HHI_HDMI_PLL_CNTL, val,
			((val & HDMI_PLL_LOCK_G12A) == HDMI_PLL_LOCK_G12A),
			10, 0);
	}

	/* Disable VCLK2 */
	FUNC3(priv->hhi, HHI_VIID_CLK_CNTL, VCLK2_EN, 0);

	/* Setup vid_pll to /1 */
	FUNC0(priv, VID_PLL_DIV_1);

	/* Setup the VCLK2 divider value to achieve 27MHz */
	FUNC3(priv->hhi, HHI_VIID_CLK_DIV,
				VCLK2_DIV_MASK, (55 - 1));

	/* select vid_pll for vclk2 */
	if (FUNC1(priv, VPU_COMPATIBLE_G12A))
		FUNC3(priv->hhi, HHI_VIID_CLK_CNTL,
					VCLK2_SEL_MASK, (0 << VCLK2_SEL_SHIFT));
	else
		FUNC3(priv->hhi, HHI_VIID_CLK_CNTL,
					VCLK2_SEL_MASK, (4 << VCLK2_SEL_SHIFT));

	/* enable vclk2 gate */
	FUNC3(priv->hhi, HHI_VIID_CLK_CNTL, VCLK2_EN, VCLK2_EN);

	/* select vclk_div1 for enci */
	FUNC3(priv->hhi, HHI_VID_CLK_DIV,
				CTS_ENCI_SEL_MASK, (8 << CTS_ENCI_SEL_SHIFT));
	/* select vclk_div1 for vdac */
	FUNC3(priv->hhi, HHI_VIID_CLK_DIV,
				CTS_VDAC_SEL_MASK, (8 << CTS_VDAC_SEL_SHIFT));

	/* release vclk2_div_reset and enable vclk2_div */
	FUNC3(priv->hhi, HHI_VIID_CLK_DIV,
				VCLK2_DIV_EN | VCLK2_DIV_RESET, VCLK2_DIV_EN);

	/* enable vclk2_div1 gate */
	FUNC3(priv->hhi, HHI_VIID_CLK_CNTL,
				VCLK2_DIV1_EN, VCLK2_DIV1_EN);

	/* reset vclk2 */
	FUNC3(priv->hhi, HHI_VIID_CLK_CNTL,
				VCLK2_SOFT_RESET, VCLK2_SOFT_RESET);
	FUNC3(priv->hhi, HHI_VIID_CLK_CNTL,
				VCLK2_SOFT_RESET, 0);

	/* enable enci_clk */
	FUNC3(priv->hhi, HHI_VID_CLK_CNTL2,
				CTS_ENCI_EN, CTS_ENCI_EN);
	/* enable vdac_clk */
	FUNC3(priv->hhi, HHI_VID_CLK_CNTL2,
				CTS_VDAC_EN, CTS_VDAC_EN);
}