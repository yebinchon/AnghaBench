#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int possible_crtcs; } ;
struct tda998x_priv {TYPE_1__ encoder; int /*<<< orphan*/  bridge; } ;
struct drm_device {int dummy; } ;
struct device {scalar_t__ of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_ENCODER_TMDS ; 
 struct tda998x_priv* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (struct drm_device*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct drm_device*,scalar_t__) ; 
 int /*<<< orphan*/  tda998x_encoder_funcs ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct drm_device *drm)
{
	struct tda998x_priv *priv = FUNC0(dev);
	u32 crtcs = 0;
	int ret;

	if (dev->of_node)
		crtcs = FUNC5(drm, dev->of_node);

	/* If no CRTCs were found, fall back to our old behaviour */
	if (crtcs == 0) {
		FUNC1(dev, "Falling back to first CRTC\n");
		crtcs = 1 << 0;
	}

	priv->encoder.possible_crtcs = crtcs;

	ret = FUNC4(drm, &priv->encoder, &tda998x_encoder_funcs,
			       DRM_MODE_ENCODER_TMDS, NULL);
	if (ret)
		goto err_encoder;

	ret = FUNC2(&priv->encoder, &priv->bridge, NULL);
	if (ret)
		goto err_bridge;

	return 0;

err_bridge:
	FUNC3(&priv->encoder);
err_encoder:
	return ret;
}