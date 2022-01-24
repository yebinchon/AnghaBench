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
struct mdp4_lcdc_encoder {int enabled; int /*<<< orphan*/ * regs; int /*<<< orphan*/  lcdc_clk; int /*<<< orphan*/  panel_node; } ;
struct mdp4_kms {int /*<<< orphan*/  base; } ;
struct drm_panel {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_panel*) ; 
 int /*<<< orphan*/  MDP4_IRQ_PRIMARY_VSYNC ; 
 int /*<<< orphan*/  REG_MDP4_LCDC_ENABLE ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mdp4_lcdc_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_panel*) ; 
 struct mdp4_kms* FUNC8 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC9 (struct mdp4_kms*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct drm_panel* FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 struct mdp4_lcdc_encoder* FUNC13 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC14(struct drm_encoder *encoder)
{
	struct drm_device *dev = encoder->dev;
	struct mdp4_lcdc_encoder *mdp4_lcdc_encoder =
			FUNC13(encoder);
	struct mdp4_kms *mdp4_kms = FUNC8(encoder);
	struct drm_panel *panel;
	int i, ret;

	if (FUNC3(!mdp4_lcdc_encoder->enabled))
		return;

	FUNC9(mdp4_kms, REG_MDP4_LCDC_ENABLE, 0);

	panel = FUNC11(mdp4_lcdc_encoder->panel_node);
	if (!FUNC2(panel)) {
		FUNC6(panel);
		FUNC7(panel);
	}

	/*
	 * Wait for a vsync so we know the ENABLE=0 latched before
	 * the (connector) source of the vsync's gets disabled,
	 * otherwise we end up in a funny state if we re-enable
	 * before the disable latches, which results that some of
	 * the settings changes for the new modeset (like new
	 * scanout buffer) don't latch properly..
	 */
	FUNC10(&mdp4_kms->base, MDP4_IRQ_PRIMARY_VSYNC);

	FUNC5(mdp4_lcdc_encoder->lcdc_clk);

	for (i = 0; i < FUNC0(mdp4_lcdc_encoder->regs); i++) {
		ret = FUNC12(mdp4_lcdc_encoder->regs[i]);
		if (ret)
			FUNC1(dev->dev, "failed to disable regulator: %d\n", ret);
	}

	FUNC4(mdp4_lcdc_encoder, 0);

	mdp4_lcdc_encoder->enabled = false;
}