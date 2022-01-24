#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tv_mode {int mode; int chroma_freq; TYPE_4__* resync_params; int /*<<< orphan*/  vblank_level; TYPE_3__* color_gains; TYPE_2__* burst_levels; TYPE_1__* video_levels; int /*<<< orphan*/  line_number; int /*<<< orphan*/  front_porch; int /*<<< orphan*/  back_porch; scalar_t__ dac_bit25_en; scalar_t__ dac3_en; scalar_t__ yc_en; } ;
struct sun4i_tv {int /*<<< orphan*/  regs; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_8__ {scalar_t__ field; int /*<<< orphan*/  line; int /*<<< orphan*/  pixel; } ;
struct TYPE_7__ {int /*<<< orphan*/  cr; int /*<<< orphan*/  cb; } ;
struct TYPE_6__ {int /*<<< orphan*/  cr; int /*<<< orphan*/  cb; } ;
struct TYPE_5__ {int /*<<< orphan*/  black; int /*<<< orphan*/  blank; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int SUN4I_TVE_12C_COMP_YUV_EN ; 
 int SUN4I_TVE_12C_NOTCH_WIDTH_WIDE ; 
 int /*<<< orphan*/  SUN4I_TVE_12C_REG ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  SUN4I_TVE_ACTIVE_LINE_REG ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  SUN4I_TVE_BURST_WIDTH_REG ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN4I_TVE_CB_CR_GAIN_REG ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN4I_TVE_CB_CR_LVL_REG ; 
 int SUN4I_TVE_CFG0_COMP_EN ; 
 int SUN4I_TVE_CFG0_CORE_CONTROL_54M ; 
 int SUN4I_TVE_CFG0_CORE_DATAPATH_54M ; 
 int SUN4I_TVE_CFG0_DAC_CONTROL_54M ; 
 int /*<<< orphan*/  SUN4I_TVE_CFG0_REG ; 
 int SUN4I_TVE_CFG0_YC_EN ; 
 int SUN4I_TVE_CHROMA_COMP_GAIN_50 ; 
 int /*<<< orphan*/  SUN4I_TVE_CHROMA_FREQ_REG ; 
 int /*<<< orphan*/  SUN4I_TVE_CHROMA_REG ; 
 int SUN4I_TVE_DAC0_CHROMA_0_75 ; 
 int SUN4I_TVE_DAC0_CLOCK_INVERT ; 
 int FUNC9 (int) ; 
 int SUN4I_TVE_DAC0_INTERNAL_DAC_37_5_OHMS ; 
 int SUN4I_TVE_DAC0_LUMA_0_4 ; 
 int /*<<< orphan*/  SUN4I_TVE_DAC0_REG ; 
 int FUNC10 (int,int) ; 
 int /*<<< orphan*/  SUN4I_TVE_DAC1_REG ; 
 int FUNC11 (int,int) ; 
 int /*<<< orphan*/  SUN4I_TVE_EN_DAC_MAP_MASK ; 
 int /*<<< orphan*/  SUN4I_TVE_EN_REG ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN4I_TVE_LEVEL_REG ; 
 int FUNC14 (int) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN4I_TVE_LINE_REG ; 
 int FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN4I_TVE_NOTCH_REG ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN4I_TVE_PORCH_REG ; 
 int SUN4I_TVE_RESYNC_FIELD ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN4I_TVE_RESYNC_REG ; 
 int /*<<< orphan*/  SUN4I_TVE_SLAVE_REG ; 
 int /*<<< orphan*/  SUN4I_TVE_SYNC_VBI_REG ; 
 int FUNC21 (int) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 struct sun4i_tv* FUNC23 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct tv_mode* FUNC26 (struct drm_display_mode*) ; 

__attribute__((used)) static void FUNC27(struct drm_encoder *encoder,
			      struct drm_display_mode *mode,
			      struct drm_display_mode *adjusted_mode)
{
	struct sun4i_tv *tv = FUNC23(encoder);
	const struct tv_mode *tv_mode = FUNC26(mode);

	/* Enable and map the DAC to the output */
	FUNC24(tv->regs, SUN4I_TVE_EN_REG,
			   SUN4I_TVE_EN_DAC_MAP_MASK,
			   FUNC11(0, 1) |
			   FUNC11(1, 2) |
			   FUNC11(2, 3) |
			   FUNC11(3, 4));

	/* Set PAL settings */
	FUNC25(tv->regs, SUN4I_TVE_CFG0_REG,
		     tv_mode->mode |
		     (tv_mode->yc_en ? SUN4I_TVE_CFG0_YC_EN : 0) |
		     SUN4I_TVE_CFG0_COMP_EN |
		     SUN4I_TVE_CFG0_DAC_CONTROL_54M |
		     SUN4I_TVE_CFG0_CORE_DATAPATH_54M |
		     SUN4I_TVE_CFG0_CORE_CONTROL_54M);

	/* Configure the DAC for a composite output */
	FUNC25(tv->regs, SUN4I_TVE_DAC0_REG,
		     FUNC9(0) |
		     (tv_mode->dac3_en ? FUNC9(3) : 0) |
		     SUN4I_TVE_DAC0_INTERNAL_DAC_37_5_OHMS |
		     SUN4I_TVE_DAC0_CHROMA_0_75 |
		     SUN4I_TVE_DAC0_LUMA_0_4 |
		     SUN4I_TVE_DAC0_CLOCK_INVERT |
		     (tv_mode->dac_bit25_en ? FUNC0(25) : 0) |
		     FUNC0(30));

	/* Configure the sample delay between DAC0 and the other DAC */
	FUNC25(tv->regs, SUN4I_TVE_NOTCH_REG,
		     FUNC16(1, 0) |
		     FUNC16(2, 0));

	FUNC25(tv->regs, SUN4I_TVE_CHROMA_FREQ_REG,
		     tv_mode->chroma_freq);

	/* Set the front and back porch */
	FUNC25(tv->regs, SUN4I_TVE_PORCH_REG,
		     FUNC17(tv_mode->back_porch) |
		     FUNC18(tv_mode->front_porch));

	/* Set the lines setup */
	FUNC25(tv->regs, SUN4I_TVE_LINE_REG,
		     FUNC14(22) |
		     FUNC15(tv_mode->line_number));

	FUNC25(tv->regs, SUN4I_TVE_LEVEL_REG,
		     FUNC13(tv_mode->video_levels->blank) |
		     FUNC12(tv_mode->video_levels->black));

	FUNC25(tv->regs, SUN4I_TVE_DAC1_REG,
		     FUNC10(0, 0x18) |
		     FUNC10(1, 0x18) |
		     FUNC10(2, 0x18) |
		     FUNC10(3, 0x18));

	FUNC25(tv->regs, SUN4I_TVE_CB_CR_LVL_REG,
		     FUNC7(tv_mode->burst_levels->cb) |
		     FUNC8(tv_mode->burst_levels->cr));

	/* Set burst width for a composite output */
	FUNC25(tv->regs, SUN4I_TVE_BURST_WIDTH_REG,
		     FUNC4(126) |
		     FUNC3(68) |
		     FUNC2(22));

	FUNC25(tv->regs, SUN4I_TVE_CB_CR_GAIN_REG,
		     FUNC5(tv_mode->color_gains->cb) |
		     FUNC6(tv_mode->color_gains->cr));

	FUNC25(tv->regs, SUN4I_TVE_SYNC_VBI_REG,
		     FUNC21(0x10) |
		     FUNC22(tv_mode->vblank_level));

	FUNC25(tv->regs, SUN4I_TVE_ACTIVE_LINE_REG,
		     FUNC1(1440));

	/* Set composite chroma gain to 50 % */
	FUNC25(tv->regs, SUN4I_TVE_CHROMA_REG,
		     SUN4I_TVE_CHROMA_COMP_GAIN_50);

	FUNC25(tv->regs, SUN4I_TVE_12C_REG,
		     SUN4I_TVE_12C_COMP_YUV_EN |
		     SUN4I_TVE_12C_NOTCH_WIDTH_WIDE);

	FUNC25(tv->regs, SUN4I_TVE_RESYNC_REG,
		     FUNC20(tv_mode->resync_params->pixel) |
		     FUNC19(tv_mode->resync_params->line) |
		     (tv_mode->resync_params->field ?
		      SUN4I_TVE_RESYNC_FIELD : 0));

	FUNC25(tv->regs, SUN4I_TVE_SLAVE_REG, 0);
}