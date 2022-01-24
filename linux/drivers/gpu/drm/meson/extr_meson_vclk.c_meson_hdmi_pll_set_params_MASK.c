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
 unsigned int HDMI_PLL_LOCK ; 
 unsigned int HDMI_PLL_LOCK_G12A ; 
 int HDMI_PLL_RESET ; 
 int HDMI_PLL_RESET_G12A ; 
 int /*<<< orphan*/  HHI_HDMI_PLL_CNTL ; 
 int /*<<< orphan*/  HHI_HDMI_PLL_CNTL2 ; 
 int /*<<< orphan*/  HHI_HDMI_PLL_CNTL3 ; 
 int /*<<< orphan*/  HHI_HDMI_PLL_CNTL4 ; 
 int /*<<< orphan*/  HHI_HDMI_PLL_CNTL5 ; 
 int /*<<< orphan*/  HHI_HDMI_PLL_CNTL6 ; 
 int /*<<< orphan*/  HHI_HDMI_PLL_CNTL7 ; 
 int HHI_HDMI_PLL_CNTL_EN ; 
 int /*<<< orphan*/  VPU_COMPATIBLE_G12A ; 
 int /*<<< orphan*/  VPU_COMPATIBLE_GXBB ; 
 int /*<<< orphan*/  VPU_COMPATIBLE_GXL ; 
 int /*<<< orphan*/  VPU_COMPATIBLE_GXM ; 
 scalar_t__ FUNC0 (struct meson_drm*,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct meson_drm *priv, unsigned int m,
			       unsigned int frac, unsigned int od1,
			       unsigned int od2, unsigned int od3)
{
	unsigned int val;

	if (FUNC0(priv, VPU_COMPATIBLE_GXBB)) {
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL, 0x58000200 | m);
		if (frac)
			FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL2,
				     0x00004000 | frac);
		else
			FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL2,
				     0x00000000);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL3, 0x0d5c5091);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL4, 0x801da72c);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL5, 0x71486980);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL6, 0x00000e55);

		/* Enable and unreset */
		FUNC3(priv->hhi, HHI_HDMI_PLL_CNTL,
				   0x7 << 28, HHI_HDMI_PLL_CNTL_EN);

		/* Poll for lock bit */
		FUNC2(priv->hhi, HHI_HDMI_PLL_CNTL,
					 val, (val & HDMI_PLL_LOCK), 10, 0);
	} else if (FUNC0(priv, VPU_COMPATIBLE_GXM) ||
		   FUNC0(priv, VPU_COMPATIBLE_GXL)) {
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL, 0x40000200 | m);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL2, 0x800cb000 | frac);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL3, 0x860f30c4);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL4, 0x0c8e0000);
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
	} else if (FUNC0(priv, VPU_COMPATIBLE_G12A)) {
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL, 0x0b3a0400 | m);

		/* Enable and reset */
		/* TODO: add specific macro for g12a here */
		FUNC3(priv->hhi, HHI_HDMI_PLL_CNTL,
				   0x3 << 28, 0x3 << 28);

		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL2, frac);
		FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL3, 0x00000000);

		/* G12A HDMI PLL Needs specific parameters for 5.4GHz */
		if (m >= 0xf7) {
			if (frac < 0x10000) {
				FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL4,
							0x6a685c00);
				FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL5,
							0x11551293);
			} else {
				FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL4,
							0xea68dc00);
				FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL5,
							0x65771290);
			}
			FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL6, 0x39272000);
			FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL7, 0x55540000);
		} else {
			FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL4, 0x0a691c00);
			FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL5, 0x33771290);
			FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL6, 0x39270000);
			FUNC4(priv->hhi, HHI_HDMI_PLL_CNTL7, 0x50540000);
		}

		do {
			/* Reset PLL */
			FUNC3(priv->hhi, HHI_HDMI_PLL_CNTL,
					HDMI_PLL_RESET_G12A, HDMI_PLL_RESET_G12A);

			/* UN-Reset PLL */
			FUNC3(priv->hhi, HHI_HDMI_PLL_CNTL,
					HDMI_PLL_RESET_G12A, 0);

			/* Poll for lock bits */
			if (!FUNC2(priv->hhi,
						      HHI_HDMI_PLL_CNTL, val,
						      ((val & HDMI_PLL_LOCK_G12A)
						        == HDMI_PLL_LOCK_G12A),
						      10, 100))
				break;
		} while(1);
	}

	if (FUNC0(priv, VPU_COMPATIBLE_GXBB))
		FUNC3(priv->hhi, HHI_HDMI_PLL_CNTL2,
				3 << 16, FUNC1(od1) << 16);
	else if (FUNC0(priv, VPU_COMPATIBLE_GXM) ||
		 FUNC0(priv, VPU_COMPATIBLE_GXL))
		FUNC3(priv->hhi, HHI_HDMI_PLL_CNTL3,
				3 << 21, FUNC1(od1) << 21);
	else if (FUNC0(priv, VPU_COMPATIBLE_G12A))
		FUNC3(priv->hhi, HHI_HDMI_PLL_CNTL,
				3 << 16, FUNC1(od1) << 16);

	if (FUNC0(priv, VPU_COMPATIBLE_GXBB))
		FUNC3(priv->hhi, HHI_HDMI_PLL_CNTL2,
				3 << 22, FUNC1(od2) << 22);
	else if (FUNC0(priv, VPU_COMPATIBLE_GXM) ||
		 FUNC0(priv, VPU_COMPATIBLE_GXL))
		FUNC3(priv->hhi, HHI_HDMI_PLL_CNTL3,
				3 << 23, FUNC1(od2) << 23);
	else if (FUNC0(priv, VPU_COMPATIBLE_G12A))
		FUNC3(priv->hhi, HHI_HDMI_PLL_CNTL,
				3 << 18, FUNC1(od2) << 18);

	if (FUNC0(priv, VPU_COMPATIBLE_GXBB))
		FUNC3(priv->hhi, HHI_HDMI_PLL_CNTL2,
				3 << 18, FUNC1(od3) << 18);
	else if (FUNC0(priv, VPU_COMPATIBLE_GXM) ||
		 FUNC0(priv, VPU_COMPATIBLE_GXL))
		FUNC3(priv->hhi, HHI_HDMI_PLL_CNTL3,
				3 << 19, FUNC1(od3) << 19);
	else if (FUNC0(priv, VPU_COMPATIBLE_G12A))
		FUNC3(priv->hhi, HHI_HDMI_PLL_CNTL,
				3 << 20, FUNC1(od3) << 20);
}