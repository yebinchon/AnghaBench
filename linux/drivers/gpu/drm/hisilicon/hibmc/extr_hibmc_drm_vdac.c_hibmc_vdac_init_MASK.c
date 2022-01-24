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
struct hibmc_drm_private {struct drm_device* dev; } ;
struct drm_encoder {int possible_crtcs; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_DAC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct drm_connector*) ; 
 int FUNC2 (struct drm_connector*) ; 
 struct drm_encoder* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct drm_connector* FUNC7 (struct hibmc_drm_private*) ; 
 int /*<<< orphan*/  hibmc_encoder_funcs ; 
 int /*<<< orphan*/  hibmc_encoder_helper_funcs ; 

int FUNC8(struct hibmc_drm_private *priv)
{
	struct drm_device *dev = priv->dev;
	struct drm_encoder *encoder;
	struct drm_connector *connector;
	int ret;

	connector = FUNC7(priv);
	if (FUNC1(connector)) {
		FUNC0("failed to create connector: %ld\n",
			  FUNC2(connector));
		return FUNC2(connector);
	}

	encoder = FUNC3(dev->dev, sizeof(*encoder), GFP_KERNEL);
	if (!encoder) {
		FUNC0("failed to alloc memory when init encoder\n");
		return -ENOMEM;
	}

	encoder->possible_crtcs = 0x1;
	ret = FUNC6(dev, encoder, &hibmc_encoder_funcs,
			       DRM_MODE_ENCODER_DAC, NULL);
	if (ret) {
		FUNC0("failed to init encoder: %d\n", ret);
		return ret;
	}

	FUNC5(encoder, &hibmc_encoder_helper_funcs);
	FUNC4(connector, encoder);

	return 0;
}