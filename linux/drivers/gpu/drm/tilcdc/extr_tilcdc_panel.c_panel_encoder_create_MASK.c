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
struct panel_module {int dummy; } ;
struct drm_encoder {int possible_crtcs; } ;
struct panel_encoder {struct drm_encoder base; struct panel_module* mod; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_ENCODER_LVDS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct panel_encoder* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  panel_encoder_funcs ; 
 int /*<<< orphan*/  panel_encoder_helper_funcs ; 

__attribute__((used)) static struct drm_encoder *FUNC4(struct drm_device *dev,
		struct panel_module *mod)
{
	struct panel_encoder *panel_encoder;
	struct drm_encoder *encoder;
	int ret;

	panel_encoder = FUNC0(dev->dev, sizeof(*panel_encoder),
				     GFP_KERNEL);
	if (!panel_encoder)
		return NULL;

	panel_encoder->mod = mod;

	encoder = &panel_encoder->base;
	encoder->possible_crtcs = 1;

	ret = FUNC3(dev, encoder, &panel_encoder_funcs,
			DRM_MODE_ENCODER_LVDS, NULL);
	if (ret < 0)
		goto fail;

	FUNC2(encoder, &panel_encoder_helper_funcs);

	return encoder;

fail:
	FUNC1(encoder);
	return NULL;
}