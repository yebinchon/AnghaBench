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
struct drm_encoder {int possible_crtcs; } ;
struct TYPE_2__ {int /*<<< orphan*/  subpixel_order; } ;
struct drm_connector {int interlace_allowed; int doublescan_allowed; TYPE_1__ display_info; } ;
struct amdgpu_device {int /*<<< orphan*/  ddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_VIRTUAL ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_VIRTUAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SubPixelHorizontalRGB ; 
 int /*<<< orphan*/  dce_virtual_connector_funcs ; 
 int /*<<< orphan*/  dce_virtual_connector_helper_funcs ; 
 int /*<<< orphan*/  dce_virtual_encoder_funcs ; 
 int /*<<< orphan*/  dce_virtual_encoder_helper_funcs ; 
 int /*<<< orphan*/  FUNC0 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct amdgpu_device *adev,
					      int index)
{
	struct drm_encoder *encoder;
	struct drm_connector *connector;

	/* add a new encoder */
	encoder = FUNC7(sizeof(struct drm_encoder), GFP_KERNEL);
	if (!encoder)
		return -ENOMEM;
	encoder->possible_crtcs = 1 << index;
	FUNC5(adev->ddev, encoder, &dce_virtual_encoder_funcs,
			 DRM_MODE_ENCODER_VIRTUAL, NULL);
	FUNC4(encoder, &dce_virtual_encoder_helper_funcs);

	connector = FUNC7(sizeof(struct drm_connector), GFP_KERNEL);
	if (!connector) {
		FUNC6(encoder);
		return -ENOMEM;
	}

	/* add a new connector */
	FUNC2(adev->ddev, connector, &dce_virtual_connector_funcs,
			   DRM_MODE_CONNECTOR_VIRTUAL);
	FUNC1(connector, &dce_virtual_connector_helper_funcs);
	connector->display_info.subpixel_order = SubPixelHorizontalRGB;
	connector->interlace_allowed = false;
	connector->doublescan_allowed = false;
	FUNC3(connector);

	/* link them */
	FUNC0(connector, encoder);

	return 0;
}