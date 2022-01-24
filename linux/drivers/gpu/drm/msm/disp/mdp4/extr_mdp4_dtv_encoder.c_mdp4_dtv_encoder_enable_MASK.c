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
struct mdp4_kms {int dummy; } ;
struct mdp4_dtv_encoder {unsigned long pixclock; int enabled; int /*<<< orphan*/  hdmi_clk; int /*<<< orphan*/  mdp_clk; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPC8 ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  INTF_LCDC_DTV ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_MDP4_DTV_ENABLE ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct mdp4_dtv_encoder*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 struct mdp4_kms* FUNC10 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mdp4_kms*,int /*<<< orphan*/ ,int) ; 
 struct mdp4_dtv_encoder* FUNC14 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC15(struct drm_encoder *encoder)
{
	struct drm_device *dev = encoder->dev;
	struct mdp4_dtv_encoder *mdp4_dtv_encoder = FUNC14(encoder);
	struct mdp4_kms *mdp4_kms = FUNC10(encoder);
	unsigned long pc = mdp4_dtv_encoder->pixclock;
	int ret;

	if (FUNC6(mdp4_dtv_encoder->enabled))
		return;

	FUNC11(encoder->crtc,
			FUNC5(BPC8) |
			FUNC3(BPC8) |
			FUNC2(BPC8) |
			FUNC4(0x21));
	FUNC12(encoder->crtc, INTF_LCDC_DTV, 1);

	FUNC7(mdp4_dtv_encoder, 1);

	FUNC0("setting mdp_clk=%lu", pc);

	ret = FUNC9(mdp4_dtv_encoder->mdp_clk, pc);
	if (ret)
		FUNC1(dev->dev, "failed to set mdp_clk to %lu: %d\n",
			pc, ret);

	ret = FUNC8(mdp4_dtv_encoder->mdp_clk);
	if (ret)
		FUNC1(dev->dev, "failed to enabled mdp_clk: %d\n", ret);

	ret = FUNC8(mdp4_dtv_encoder->hdmi_clk);
	if (ret)
		FUNC1(dev->dev, "failed to enable hdmi_clk: %d\n", ret);

	FUNC13(mdp4_kms, REG_MDP4_DTV_ENABLE, 1);

	mdp4_dtv_encoder->enabled = true;
}