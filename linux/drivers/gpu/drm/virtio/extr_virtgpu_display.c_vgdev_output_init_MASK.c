#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* height; void* width; } ;
struct TYPE_4__ {TYPE_1__ r; void* enabled; } ;
struct drm_crtc {int dummy; } ;
struct drm_encoder {int possible_crtcs; } ;
struct drm_connector {int dummy; } ;
struct virtio_gpu_output {int index; TYPE_2__ info; struct drm_crtc crtc; struct drm_encoder enc; struct drm_connector conn; } ;
struct virtio_gpu_device {scalar_t__ has_edid; struct virtio_gpu_output* outputs; struct drm_device* ddev; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_VIRTUAL ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_VIRTUAL ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_CURSOR ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_PRIMARY ; 
 scalar_t__ FUNC0 (struct drm_plane*) ; 
 int FUNC1 (struct drm_plane*) ; 
 int XRES_DEF ; 
 int YRES_DEF ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,struct drm_crtc*,struct drm_plane*,struct drm_plane*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  virtio_gpu_conn_helper_funcs ; 
 int /*<<< orphan*/  virtio_gpu_connector_funcs ; 
 int /*<<< orphan*/  virtio_gpu_crtc_funcs ; 
 int /*<<< orphan*/  virtio_gpu_crtc_helper_funcs ; 
 int /*<<< orphan*/  virtio_gpu_enc_funcs ; 
 int /*<<< orphan*/  virtio_gpu_enc_helper_funcs ; 
 struct drm_plane* FUNC12 (struct virtio_gpu_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(struct virtio_gpu_device *vgdev, int index)
{
	struct drm_device *dev = vgdev->ddev;
	struct virtio_gpu_output *output = vgdev->outputs + index;
	struct drm_connector *connector = &output->conn;
	struct drm_encoder *encoder = &output->enc;
	struct drm_crtc *crtc = &output->crtc;
	struct drm_plane *primary, *cursor;

	output->index = index;
	if (index == 0) {
		output->info.enabled = FUNC2(true);
		output->info.r.width = FUNC2(XRES_DEF);
		output->info.r.height = FUNC2(YRES_DEF);
	}

	primary = FUNC12(vgdev, DRM_PLANE_TYPE_PRIMARY, index);
	if (FUNC0(primary))
		return FUNC1(primary);
	cursor = FUNC12(vgdev, DRM_PLANE_TYPE_CURSOR, index);
	if (FUNC0(cursor))
		return FUNC1(cursor);
	FUNC9(dev, crtc, primary, cursor,
				  &virtio_gpu_crtc_funcs, NULL);
	FUNC8(crtc, &virtio_gpu_crtc_helper_funcs);

	FUNC6(dev, connector, &virtio_gpu_connector_funcs,
			   DRM_MODE_CONNECTOR_VIRTUAL);
	FUNC5(connector, &virtio_gpu_conn_helper_funcs);
	if (vgdev->has_edid)
		FUNC3(connector);

	FUNC11(dev, encoder, &virtio_gpu_enc_funcs,
			 DRM_MODE_ENCODER_VIRTUAL, NULL);
	FUNC10(encoder, &virtio_gpu_enc_helper_funcs);
	encoder->possible_crtcs = 1 << index;

	FUNC4(connector, encoder);
	FUNC7(connector);
	return 0;
}