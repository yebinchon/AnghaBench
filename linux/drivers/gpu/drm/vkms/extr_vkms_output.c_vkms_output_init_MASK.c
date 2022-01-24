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
struct drm_crtc {int dummy; } ;
struct drm_encoder {int possible_crtcs; } ;
struct drm_connector {int dummy; } ;
struct vkms_output {struct drm_crtc crtc; struct drm_encoder encoder; struct drm_connector connector; } ;
struct drm_device {int dummy; } ;
struct vkms_device {struct drm_device drm; struct vkms_output output; } ;
struct drm_plane {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_VIRTUAL ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_VIRTUAL ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_CURSOR ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_PRIMARY ; 
 scalar_t__ FUNC1 (struct drm_plane*) ; 
 int FUNC2 (struct drm_plane*) ; 
 int FUNC3 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_encoder*) ; 
 int FUNC9 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_plane*) ; 
 scalar_t__ enable_cursor ; 
 int /*<<< orphan*/  vkms_conn_helper_funcs ; 
 int /*<<< orphan*/  vkms_connector_funcs ; 
 int FUNC12 (struct drm_device*,struct drm_crtc*,struct drm_plane*,struct drm_plane*) ; 
 int /*<<< orphan*/  vkms_encoder_funcs ; 
 struct drm_plane* FUNC13 (struct vkms_device*,int /*<<< orphan*/ ,int) ; 

int FUNC14(struct vkms_device *vkmsdev, int index)
{
	struct vkms_output *output = &vkmsdev->output;
	struct drm_device *dev = &vkmsdev->drm;
	struct drm_connector *connector = &output->connector;
	struct drm_encoder *encoder = &output->encoder;
	struct drm_crtc *crtc = &output->crtc;
	struct drm_plane *primary, *cursor = NULL;
	int ret;

	primary = FUNC13(vkmsdev, DRM_PLANE_TYPE_PRIMARY, index);
	if (FUNC1(primary))
		return FUNC2(primary);

	if (enable_cursor) {
		cursor = FUNC13(vkmsdev, DRM_PLANE_TYPE_CURSOR, index);
		if (FUNC1(cursor)) {
			ret = FUNC2(cursor);
			goto err_cursor;
		}
	}

	ret = FUNC12(dev, crtc, primary, cursor);
	if (ret)
		goto err_crtc;

	ret = FUNC6(dev, connector, &vkms_connector_funcs,
				 DRM_MODE_CONNECTOR_VIRTUAL);
	if (ret) {
		FUNC0("Failed to init connector\n");
		goto err_connector;
	}

	FUNC5(connector, &vkms_conn_helper_funcs);

	ret = FUNC9(dev, encoder, &vkms_encoder_funcs,
			       DRM_MODE_ENCODER_VIRTUAL, NULL);
	if (ret) {
		FUNC0("Failed to init encoder\n");
		goto err_encoder;
	}
	encoder->possible_crtcs = 1;

	ret = FUNC3(connector, encoder);
	if (ret) {
		FUNC0("Failed to attach connector to encoder\n");
		goto err_attach;
	}

	FUNC10(dev);

	return 0;

err_attach:
	FUNC8(encoder);

err_encoder:
	FUNC4(connector);

err_connector:
	FUNC7(crtc);

err_crtc:
	if (enable_cursor)
		FUNC11(cursor);

err_cursor:
	FUNC11(primary);

	return ret;
}