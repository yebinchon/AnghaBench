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
struct drm_connector {int /*<<< orphan*/  polled; } ;
struct drm_encoder {int /*<<< orphan*/  possible_crtcs; } ;
struct zx_vga {struct drm_connector connector; struct device* dev; struct drm_encoder encoder; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_HPD ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_VGA ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_DAC ; 
 int /*<<< orphan*/  VOU_CRTC_MASK ; 
 int FUNC1 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zx_vga_connector_funcs ; 
 int /*<<< orphan*/  zx_vga_connector_helper_funcs ; 
 int /*<<< orphan*/  zx_vga_encoder_funcs ; 
 int /*<<< orphan*/  zx_vga_encoder_helper_funcs ; 

__attribute__((used)) static int FUNC8(struct drm_device *drm, struct zx_vga *vga)
{
	struct drm_encoder *encoder = &vga->encoder;
	struct drm_connector *connector = &vga->connector;
	struct device *dev = vga->dev;
	int ret;

	encoder->possible_crtcs = VOU_CRTC_MASK;

	ret = FUNC7(drm, encoder, &zx_vga_encoder_funcs,
			       DRM_MODE_ENCODER_DAC, NULL);
	if (ret) {
		FUNC0(dev, "failed to init encoder: %d\n", ret);
		return ret;
	};

	FUNC6(encoder, &zx_vga_encoder_helper_funcs);

	vga->connector.polled = DRM_CONNECTOR_POLL_HPD;

	ret = FUNC4(drm, connector, &zx_vga_connector_funcs,
				 DRM_MODE_CONNECTOR_VGA);
	if (ret) {
		FUNC0(dev, "failed to init connector: %d\n", ret);
		goto clean_encoder;
	};

	FUNC3(connector, &zx_vga_connector_helper_funcs);

	ret = FUNC1(connector, encoder);
	if (ret) {
		FUNC0(dev, "failed to attach encoder: %d\n", ret);
		goto clean_connector;
	};

	return 0;

clean_connector:
	FUNC2(connector);
clean_encoder:
	FUNC5(encoder);
	return ret;
}