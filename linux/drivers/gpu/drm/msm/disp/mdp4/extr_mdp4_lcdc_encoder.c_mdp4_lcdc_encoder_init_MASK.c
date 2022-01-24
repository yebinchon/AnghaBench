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
struct regulator {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct mdp4_lcdc_encoder {struct regulator** regs; struct regulator* lcdc_clk; struct drm_encoder base; struct device_node* panel_node; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_LVDS ; 
 int ENOMEM ; 
 struct drm_encoder* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct regulator*) ; 
 int FUNC3 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC4 (struct mdp4_lcdc_encoder*) ; 
 struct regulator* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mdp4_lcdc_encoder* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_encoder*) ; 
 int /*<<< orphan*/  mdp4_lcdc_encoder_funcs ; 
 int /*<<< orphan*/  mdp4_lcdc_encoder_helper_funcs ; 
 struct regulator* FUNC10 (struct drm_device*) ; 

struct drm_encoder *FUNC11(struct drm_device *dev,
		struct device_node *panel_node)
{
	struct drm_encoder *encoder = NULL;
	struct mdp4_lcdc_encoder *mdp4_lcdc_encoder;
	struct regulator *reg;
	int ret;

	mdp4_lcdc_encoder = FUNC8(sizeof(*mdp4_lcdc_encoder), GFP_KERNEL);
	if (!mdp4_lcdc_encoder) {
		ret = -ENOMEM;
		goto fail;
	}

	mdp4_lcdc_encoder->panel_node = panel_node;

	encoder = &mdp4_lcdc_encoder->base;

	FUNC7(dev, encoder, &mdp4_lcdc_encoder_funcs,
			 DRM_MODE_ENCODER_LVDS, NULL);
	FUNC6(encoder, &mdp4_lcdc_encoder_helper_funcs);

	/* TODO: do we need different pll in other cases? */
	mdp4_lcdc_encoder->lcdc_clk = FUNC10(dev);
	if (FUNC2(mdp4_lcdc_encoder->lcdc_clk)) {
		FUNC0(dev->dev, "failed to get lvds_clk\n");
		ret = FUNC3(mdp4_lcdc_encoder->lcdc_clk);
		goto fail;
	}

	/* TODO: different regulators in other cases? */
	reg = FUNC5(dev->dev, "lvds-vccs-3p3v");
	if (FUNC2(reg)) {
		ret = FUNC3(reg);
		FUNC0(dev->dev, "failed to get lvds-vccs-3p3v: %d\n", ret);
		goto fail;
	}
	mdp4_lcdc_encoder->regs[0] = reg;

	reg = FUNC5(dev->dev, "lvds-pll-vdda");
	if (FUNC2(reg)) {
		ret = FUNC3(reg);
		FUNC0(dev->dev, "failed to get lvds-pll-vdda: %d\n", ret);
		goto fail;
	}
	mdp4_lcdc_encoder->regs[1] = reg;

	reg = FUNC5(dev->dev, "lvds-vdda");
	if (FUNC2(reg)) {
		ret = FUNC3(reg);
		FUNC0(dev->dev, "failed to get lvds-vdda: %d\n", ret);
		goto fail;
	}
	mdp4_lcdc_encoder->regs[2] = reg;

	FUNC4(mdp4_lcdc_encoder);

	return encoder;

fail:
	if (encoder)
		FUNC9(encoder);

	return FUNC1(ret);
}