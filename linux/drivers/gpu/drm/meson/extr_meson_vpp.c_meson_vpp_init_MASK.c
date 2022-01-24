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
struct meson_drm {scalar_t__ io_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOLBY_PATH_CTRL ; 
 int /*<<< orphan*/  VIU_MISC_CTRL1 ; 
 int /*<<< orphan*/  VPP_BLEND_VD2_H_START_END ; 
 int /*<<< orphan*/  VPP_DOLBY_CTRL ; 
 int /*<<< orphan*/  VPP_DUMMY_DATA1 ; 
 int /*<<< orphan*/  VPP_HOLD_LINES ; 
 int FUNC0 (int) ; 
 int VPP_MINUS_BLACK_LVL_VADJ1_ENABLE ; 
 int /*<<< orphan*/  VPP_MISC ; 
 int /*<<< orphan*/  VPP_OFIFO_SIZE ; 
 int VPP_OFIFO_SIZE_DEFAULT ; 
 int VPP_OFIFO_SIZE_MASK ; 
 int VPP_OSD1_POSTBLEND ; 
 int VPP_OSD2_POSTBLEND ; 
 int /*<<< orphan*/  VPP_OSD_HSC_CTRL0 ; 
 int /*<<< orphan*/  VPP_OSD_SC_CTRL0 ; 
 int /*<<< orphan*/  VPP_OSD_VSC_CTRL0 ; 
 int VPP_POSTBLEND_ENABLE ; 
 int FUNC1 (int) ; 
 int VPP_PPS_DUMMY_DATA_MODE ; 
 int VPP_PREBLEND_ENABLE ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  VPP_PREBLEND_VD1_H_START_END ; 
 int /*<<< orphan*/  VPP_SC_MISC ; 
 int VPP_SC_VD_EN_ENABLE ; 
 int /*<<< orphan*/  VPP_VADJ_CTRL ; 
 int VPP_VD1_POSTBLEND ; 
 int VPP_VD1_PREBLEND ; 
 int VPP_VD2_POSTBLEND ; 
 int VPP_VD2_PREBLEND ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  VPU_COMPATIBLE_G12A ; 
 int /*<<< orphan*/  VPU_COMPATIBLE_GXL ; 
 int /*<<< orphan*/  VPU_COMPATIBLE_GXM ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct meson_drm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct meson_drm*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct meson_drm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vpp_filter_coefs_4point_bspline ; 
 int /*<<< orphan*/  vpp_filter_coefs_bicubic ; 
 int /*<<< orphan*/  FUNC8 (int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

void FUNC10(struct meson_drm *priv)
{
	/* set dummy data default YUV black */
	if (FUNC7(priv, VPU_COMPATIBLE_GXL))
		FUNC9(0x108080, priv->io_base + FUNC4(VPP_DUMMY_DATA1));
	else if (FUNC7(priv, VPU_COMPATIBLE_GXM)) {
		FUNC8(0xff << 16, 0xff << 16,
				    priv->io_base + FUNC4(VIU_MISC_CTRL1));
		FUNC9(VPP_PPS_DUMMY_DATA_MODE,
			       priv->io_base + FUNC4(VPP_DOLBY_CTRL));
		FUNC9(0x1020080,
				priv->io_base + FUNC4(VPP_DUMMY_DATA1));
	} else if (FUNC7(priv, VPU_COMPATIBLE_G12A))
		FUNC9(0xf, priv->io_base + FUNC4(DOLBY_PATH_CTRL));

	/* Initialize vpu fifo control registers */
	if (FUNC7(priv, VPU_COMPATIBLE_G12A))
		FUNC9(VPP_OFIFO_SIZE_DEFAULT,
			       priv->io_base + FUNC4(VPP_OFIFO_SIZE));
	else
		FUNC8(VPP_OFIFO_SIZE_MASK, 0x77f,
				    priv->io_base + FUNC4(VPP_OFIFO_SIZE));
	FUNC9(FUNC1(4) | FUNC2(4),
		       priv->io_base + FUNC4(VPP_HOLD_LINES));

	if (!FUNC7(priv, VPU_COMPATIBLE_G12A)) {
		/* Turn off preblend */
		FUNC8(VPP_PREBLEND_ENABLE, 0,
				    priv->io_base + FUNC4(VPP_MISC));

		/* Turn off POSTBLEND */
		FUNC8(VPP_POSTBLEND_ENABLE, 0,
				    priv->io_base + FUNC4(VPP_MISC));

		/* Force all planes off */
		FUNC8(VPP_OSD1_POSTBLEND | VPP_OSD2_POSTBLEND |
				    VPP_VD1_POSTBLEND | VPP_VD2_POSTBLEND |
				    VPP_VD1_PREBLEND | VPP_VD2_PREBLEND, 0,
				    priv->io_base + FUNC4(VPP_MISC));

		/* Setup default VD settings */
		FUNC9(4096,
				priv->io_base + FUNC4(VPP_PREBLEND_VD1_H_START_END));
		FUNC9(4096,
				priv->io_base + FUNC4(VPP_BLEND_VD2_H_START_END));
	}

	/* Disable Scalers */
	FUNC9(0, priv->io_base + FUNC4(VPP_OSD_SC_CTRL0));
	FUNC9(0, priv->io_base + FUNC4(VPP_OSD_VSC_CTRL0));
	FUNC9(0, priv->io_base + FUNC4(VPP_OSD_HSC_CTRL0));

	/* Set horizontal/vertical bank length and enable video scale out */
	FUNC9(FUNC3(4) | FUNC0(4) |
		       VPP_SC_VD_EN_ENABLE,
		       priv->io_base + FUNC4(VPP_SC_MISC));

	/* Enable minus black level for vadj1 */
	FUNC9(VPP_MINUS_BLACK_LVL_VADJ1_ENABLE,
		       priv->io_base + FUNC4(VPP_VADJ_CTRL));

	/* Write in the proper filter coefficients. */
	FUNC5(priv,
				vpp_filter_coefs_4point_bspline, false);
	FUNC5(priv,
				vpp_filter_coefs_4point_bspline, true);

	/* Write the VD proper filter coefficients. */
	FUNC6(priv, vpp_filter_coefs_bicubic,
						false);
	FUNC6(priv, vpp_filter_coefs_bicubic,
						true);
}