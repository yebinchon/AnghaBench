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
struct msm_drm_private {scalar_t__* dsi; int /*<<< orphan*/  num_encoders; struct drm_encoder** encoders; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {int dummy; } ;
struct dpu_kms {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_DSI ; 
 scalar_t__ FUNC2 (struct drm_encoder*) ; 
 int FUNC3 (struct drm_encoder*) ; 
 struct drm_encoder* FUNC4 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,struct drm_device*,struct drm_encoder*) ; 

__attribute__((used)) static int FUNC6(struct drm_device *dev,
				    struct msm_drm_private *priv,
				    struct dpu_kms *dpu_kms)
{
	struct drm_encoder *encoder = NULL;
	int i, rc = 0;

	if (!(priv->dsi[0] || priv->dsi[1]))
		return rc;

	/*TODO: Support two independent DSI connectors */
	encoder = FUNC4(dev, DRM_MODE_ENCODER_DSI);
	if (FUNC2(encoder)) {
		FUNC1("encoder init failed for dsi display\n");
		return FUNC3(encoder);
	}

	priv->encoders[priv->num_encoders++] = encoder;

	for (i = 0; i < FUNC0(priv->dsi); i++) {
		if (!priv->dsi[i])
			continue;

		rc = FUNC5(priv->dsi[i], dev, encoder);
		if (rc) {
			FUNC1("modeset_init failed for dsi[%d], rc = %d\n",
				i, rc);
			break;
		}
	}

	return rc;
}