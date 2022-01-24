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
struct radeon_connector {int /*<<< orphan*/  dac_load_detect; } ;
struct drm_encoder_helper_funcs {int (* detect ) (struct drm_encoder*,struct drm_connector*) ;} ;
struct drm_encoder {struct drm_encoder_helper_funcs* helper_private; } ;
struct drm_connector {TYPE_1__* dev; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct drm_encoder* FUNC4 (struct drm_connector*) ; 
 int FUNC5 (struct drm_connector*,struct drm_encoder*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_connector*,int) ; 
 int FUNC7 (struct drm_encoder*,struct drm_connector*) ; 
 struct radeon_connector* FUNC8 (struct drm_connector*) ; 

__attribute__((used)) static enum drm_connector_status
FUNC9(struct drm_connector *connector, bool force)
{
	struct drm_encoder *encoder;
	const struct drm_encoder_helper_funcs *encoder_funcs;
	struct radeon_connector *radeon_connector = FUNC8(connector);
	enum drm_connector_status ret = connector_status_disconnected;
	int r;

	if (!radeon_connector->dac_load_detect)
		return ret;

	if (!FUNC0()) {
		r = FUNC1(connector->dev->dev);
		if (r < 0)
			return connector_status_disconnected;
	}

	encoder = FUNC4(connector);
	if (!encoder)
		ret = connector_status_disconnected;
	else {
		encoder_funcs = encoder->helper_private;
		ret = encoder_funcs->detect(encoder, connector);
	}
	if (ret == connector_status_connected)
		ret = FUNC5(connector, encoder, ret, false);
	FUNC6(connector, ret);

	if (!FUNC0()) {
		FUNC2(connector->dev->dev);
		FUNC3(connector->dev->dev);
	}

	return ret;
}