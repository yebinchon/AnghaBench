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
typedef  int uint32_t ;
struct TYPE_2__ {int osd1_enabled; int osd1_commit; int osd1_interlace; } ;
struct meson_drm {TYPE_1__ viu; scalar_t__ io_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFBC_ENABLE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DOLBY_PATH_CTRL ; 
 int /*<<< orphan*/  OSD1_BLEND_SRC_CTRL ; 
 int /*<<< orphan*/  OSD2_BLEND_SRC_CTRL ; 
 int OSD_BLEND_PATH_SEL_ENABLE ; 
 int OSD_REPLACE_SHIFT ; 
 int /*<<< orphan*/  RGB709_to_YUV709l_coeff ; 
 int /*<<< orphan*/  VD1_BLEND_SRC_CTRL ; 
 int /*<<< orphan*/  VD1_IF0_LUMA_FIFO_SIZE ; 
 int /*<<< orphan*/  VD2_BLEND_SRC_CTRL ; 
 int /*<<< orphan*/  VD2_IF0_LUMA_FIFO_SIZE ; 
 int VIU_CTRL0_VD1_AFBC_MASK ; 
 int /*<<< orphan*/  VIU_MISC_CTRL0 ; 
 int /*<<< orphan*/  VIU_OSD1_CTRL_STAT ; 
 int /*<<< orphan*/  VIU_OSD1_CTRL_STAT2 ; 
 int /*<<< orphan*/  VIU_OSD1_FIFO_CTRL_STAT ; 
 int VIU_OSD1_OSD_BLK_ENABLE ; 
 int VIU_OSD1_OSD_ENABLE ; 
 int /*<<< orphan*/  VIU_OSD2_CTRL_STAT ; 
 int /*<<< orphan*/  VIU_OSD2_CTRL_STAT2 ; 
 int /*<<< orphan*/  VIU_OSD2_FIFO_CTRL_STAT ; 
 int VIU_OSD_BLEND1_DIN3_BYPASS_TO_DOUT1 ; 
 int VIU_OSD_BLEND1_DOUT_BYPASS_TO_BLEND2 ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  VIU_OSD_BLEND_CTRL ; 
 int VIU_OSD_BLEND_DIN0_BYPASS_TO_DOUT0 ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  VIU_OSD_BLEND_DUMMY_ALPHA ; 
 int /*<<< orphan*/  VIU_OSD_BLEND_DUMMY_DATA0 ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,int) ; 
 int VIU_OSD_DDR_PRIORITY_URGENT ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  VPU_COMPATIBLE_G12A ; 
 int /*<<< orphan*/  VPU_COMPATIBLE_GXL ; 
 int /*<<< orphan*/  VPU_COMPATIBLE_GXM ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct meson_drm*) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct meson_drm*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (struct meson_drm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int,scalar_t__) ; 

void FUNC16(struct meson_drm *priv)
{
	uint32_t reg;

	/* Disable OSDs */
	FUNC14(VIU_OSD1_OSD_BLK_ENABLE | VIU_OSD1_OSD_ENABLE, 0,
			    priv->io_base + FUNC9(VIU_OSD1_CTRL_STAT));
	FUNC14(VIU_OSD1_OSD_BLK_ENABLE | VIU_OSD1_OSD_ENABLE, 0,
			    priv->io_base + FUNC9(VIU_OSD2_CTRL_STAT));

	/* On GXL/GXM, Use the 10bit HDR conversion matrix */
	if (FUNC13(priv, VPU_COMPATIBLE_GXM) ||
	    FUNC13(priv, VPU_COMPATIBLE_GXL))
		FUNC10(priv);
	else if (FUNC13(priv, VPU_COMPATIBLE_G12A))
		FUNC12(priv, RGB709_to_YUV709l_coeff,
					       true);

	/* Initialize OSD1 fifo control register */
	reg = VIU_OSD_DDR_PRIORITY_URGENT |
		FUNC7(4) |
		FUNC5(32) | /* fifo_depth_val: 32*8=256 */
		FUNC8(4) | /* 4 words in 1 burst */
		FUNC6(2);      /* fifo_lim: 2*16=32 */

	if (FUNC13(priv, VPU_COMPATIBLE_G12A))
		reg |= FUNC11(32);
	else
		reg |= FUNC11(64);

	FUNC15(reg, priv->io_base + FUNC9(VIU_OSD1_FIFO_CTRL_STAT));
	FUNC15(reg, priv->io_base + FUNC9(VIU_OSD2_FIFO_CTRL_STAT));

	/* Set OSD alpha replace value */
	FUNC14(0xff << OSD_REPLACE_SHIFT,
			    0xff << OSD_REPLACE_SHIFT,
			    priv->io_base + FUNC9(VIU_OSD1_CTRL_STAT2));
	FUNC14(0xff << OSD_REPLACE_SHIFT,
			    0xff << OSD_REPLACE_SHIFT,
			    priv->io_base + FUNC9(VIU_OSD2_CTRL_STAT2));

	/* Disable VD1 AFBC */
	/* di_mif0_en=0 mif0_to_vpp_en=0 di_mad_en=0 and afbc vd1 set=0*/
	FUNC14(VIU_CTRL0_VD1_AFBC_MASK, 0,
			    priv->io_base + FUNC9(VIU_MISC_CTRL0));
	FUNC15(0, priv->io_base + FUNC9(AFBC_ENABLE));

	FUNC15(0x00FF00C0,
			priv->io_base + FUNC9(VD1_IF0_LUMA_FIFO_SIZE));
	FUNC15(0x00FF00C0,
			priv->io_base + FUNC9(VD2_IF0_LUMA_FIFO_SIZE));

	if (FUNC13(priv, VPU_COMPATIBLE_G12A)) {
		FUNC15(FUNC4(0, 1) |
			       FUNC4(1, 0) |
			       FUNC4(2, 0) |
			       FUNC4(3, 0) |
			       FUNC2(1) |
			       VIU_OSD_BLEND1_DIN3_BYPASS_TO_DOUT1 |
			       VIU_OSD_BLEND1_DOUT_BYPASS_TO_BLEND2 |
			       VIU_OSD_BLEND_DIN0_BYPASS_TO_DOUT0 |
			       FUNC1(1) |
			       FUNC3(4),
			       priv->io_base + FUNC9(VIU_OSD_BLEND_CTRL));

		FUNC15(OSD_BLEND_PATH_SEL_ENABLE,
			       priv->io_base + FUNC9(OSD1_BLEND_SRC_CTRL));
		FUNC15(OSD_BLEND_PATH_SEL_ENABLE,
			       priv->io_base + FUNC9(OSD2_BLEND_SRC_CTRL));
		FUNC15(0, priv->io_base + FUNC9(VD1_BLEND_SRC_CTRL));
		FUNC15(0, priv->io_base + FUNC9(VD2_BLEND_SRC_CTRL));
		FUNC15(0,
				priv->io_base + FUNC9(VIU_OSD_BLEND_DUMMY_DATA0));
		FUNC15(0,
				priv->io_base + FUNC9(VIU_OSD_BLEND_DUMMY_ALPHA));

		FUNC14(FUNC0(0xc), FUNC0(0xc),
				    priv->io_base + FUNC9(DOLBY_PATH_CTRL));
	}

	priv->viu.osd1_enabled = false;
	priv->viu.osd1_commit = false;
	priv->viu.osd1_interlace = false;
}