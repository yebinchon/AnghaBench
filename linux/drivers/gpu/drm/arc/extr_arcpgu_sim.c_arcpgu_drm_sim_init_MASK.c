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
struct drm_encoder {int possible_crtcs; scalar_t__ possible_clones; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_connector {int dummy; } ;
struct device_node {int dummy; } ;
struct arcpgu_drm_connector {struct drm_connector connector; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_VIRTUAL ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_VIRTUAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  arcpgu_drm_connector_funcs ; 
 int /*<<< orphan*/  arcpgu_drm_connector_helper_funcs ; 
 int /*<<< orphan*/  arcpgu_drm_encoder_funcs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_encoder*) ; 
 int FUNC8 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(struct drm_device *drm, struct device_node *np)
{
	struct arcpgu_drm_connector *arcpgu_connector;
	struct drm_encoder *encoder;
	struct drm_connector *connector;
	int ret;

	encoder = FUNC1(drm->dev, sizeof(*encoder), GFP_KERNEL);
	if (encoder == NULL)
		return -ENOMEM;

	encoder->possible_crtcs = 1;
	encoder->possible_clones = 0;

	ret = FUNC8(drm, encoder, &arcpgu_drm_encoder_funcs,
			       DRM_MODE_ENCODER_VIRTUAL, NULL);
	if (ret)
		return ret;

	arcpgu_connector = FUNC1(drm->dev, sizeof(*arcpgu_connector),
					GFP_KERNEL);
	if (!arcpgu_connector) {
		ret = -ENOMEM;
		goto error_encoder_cleanup;
	}

	connector = &arcpgu_connector->connector;
	FUNC4(connector, &arcpgu_drm_connector_helper_funcs);

	ret = FUNC5(drm, connector, &arcpgu_drm_connector_funcs,
			DRM_MODE_CONNECTOR_VIRTUAL);
	if (ret < 0) {
		FUNC0(drm->dev, "failed to initialize drm connector\n");
		goto error_encoder_cleanup;
	}

	ret = FUNC2(connector, encoder);
	if (ret < 0) {
		FUNC0(drm->dev, "could not attach connector to encoder\n");
		FUNC6(connector);
		goto error_connector_cleanup;
	}

	return 0;

error_connector_cleanup:
	FUNC3(connector);

error_encoder_cleanup:
	FUNC7(encoder);
	return ret;
}