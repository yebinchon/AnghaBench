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
struct mdp4_lcdc_encoder {unsigned long pixclock; int enabled; int /*<<< orphan*/  panel_node; int /*<<< orphan*/  lcdc_clk; int /*<<< orphan*/ * regs; } ;
struct mdp4_kms {int dummy; } ;
struct drm_panel {int dummy; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; struct drm_device* dev; } ;
struct drm_device {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BPC6 ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  INTF_LCDC_DTV ; 
 int /*<<< orphan*/  FUNC3 (struct drm_panel*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int MDP4_DMA_CONFIG_DEFLKR_EN ; 
 int MDP4_DMA_CONFIG_DITHER_EN ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int MDP4_DMA_CONFIG_PACK_ALIGN_MSB ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_MDP4_LCDC_ENABLE ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct mdp4_lcdc_encoder*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_panel*) ; 
 struct mdp4_kms* FUNC14 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct mdp4_kms*,int /*<<< orphan*/ ,int) ; 
 struct drm_panel* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct drm_encoder*) ; 
 struct mdp4_lcdc_encoder* FUNC22 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC23(struct drm_encoder *encoder)
{
	struct drm_device *dev = encoder->dev;
	struct mdp4_lcdc_encoder *mdp4_lcdc_encoder =
			FUNC22(encoder);
	unsigned long pc = mdp4_lcdc_encoder->pixclock;
	struct mdp4_kms *mdp4_kms = FUNC14(encoder);
	struct drm_panel *panel;
	uint32_t config;
	int i, ret;

	if (FUNC8(mdp4_lcdc_encoder->enabled))
		return;

	/* TODO: hard-coded for 18bpp: */
	config =
		FUNC7(BPC6) |
		FUNC5(BPC6) |
		FUNC4(BPC6) |
		FUNC6(0x21) |
		MDP4_DMA_CONFIG_DEFLKR_EN |
		MDP4_DMA_CONFIG_DITHER_EN;

	if (!FUNC19(dev->dev->of_node, "qcom,lcdc-align-lsb"))
		config |= MDP4_DMA_CONFIG_PACK_ALIGN_MSB;

	FUNC15(encoder->crtc, config);
	FUNC16(encoder->crtc, INTF_LCDC_DTV, 0);

	FUNC9(mdp4_lcdc_encoder, 1);

	for (i = 0; i < FUNC0(mdp4_lcdc_encoder->regs); i++) {
		ret = FUNC20(mdp4_lcdc_encoder->regs[i]);
		if (ret)
			FUNC2(dev->dev, "failed to enable regulator: %d\n", ret);
	}

	FUNC1("setting lcdc_clk=%lu", pc);
	ret = FUNC11(mdp4_lcdc_encoder->lcdc_clk, pc);
	if (ret)
		FUNC2(dev->dev, "failed to configure lcdc_clk: %d\n", ret);
	ret = FUNC10(mdp4_lcdc_encoder->lcdc_clk);
	if (ret)
		FUNC2(dev->dev, "failed to enable lcdc_clk: %d\n", ret);

	panel = FUNC18(mdp4_lcdc_encoder->panel_node);
	if (!FUNC3(panel)) {
		FUNC13(panel);
		FUNC12(panel);
	}

	FUNC21(encoder);

	FUNC17(mdp4_kms, REG_MDP4_LCDC_ENABLE, 1);

	mdp4_lcdc_encoder->enabled = true;
}