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
struct radeon_encoder_mst {int /*<<< orphan*/  primary; struct radeon_connector* connector; } ;
struct drm_encoder {int possible_crtcs; } ;
struct radeon_encoder {int is_mst_encoder; struct radeon_encoder_mst* enc_priv; struct drm_encoder base; } ;
struct radeon_device {int num_crtc; } ;
struct TYPE_2__ {struct drm_connector_helper_funcs* helper_private; struct drm_device* dev; } ;
struct radeon_connector {TYPE_1__ base; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector_helper_funcs {struct drm_encoder* (* best_encoder ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct drm_encoder*) ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_DPMST ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_encoder*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  radeon_dp_mst_enc_funcs ; 
 int /*<<< orphan*/  radeon_mst_helper_funcs ; 
 struct drm_encoder* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*) ; 

__attribute__((used)) static struct radeon_encoder *
FUNC7(struct radeon_connector *connector)
{
	struct drm_device *dev = connector->base.dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_encoder *radeon_encoder;
	struct radeon_encoder_mst *mst_enc;
	struct drm_encoder *encoder;
	const struct drm_connector_helper_funcs *connector_funcs = connector->base.helper_private;
	struct drm_encoder *enc_master = connector_funcs->best_encoder(&connector->base);

	FUNC0("enc master is %p\n", enc_master);
	radeon_encoder = FUNC4(sizeof(*radeon_encoder), GFP_KERNEL);
	if (!radeon_encoder)
		return NULL;

	radeon_encoder->enc_priv = FUNC4(sizeof(*mst_enc), GFP_KERNEL);
	if (!radeon_encoder->enc_priv) {
		FUNC3(radeon_encoder);
		return NULL;
	}
	encoder = &radeon_encoder->base;
	switch (rdev->num_crtc) {
	case 1:
		encoder->possible_crtcs = 0x1;
		break;
	case 2:
	default:
		encoder->possible_crtcs = 0x3;
		break;
	case 4:
		encoder->possible_crtcs = 0xf;
		break;
	case 6:
		encoder->possible_crtcs = 0x3f;
		break;
	}

	FUNC2(dev, &radeon_encoder->base, &radeon_dp_mst_enc_funcs,
			 DRM_MODE_ENCODER_DPMST, NULL);
	FUNC1(encoder, &radeon_mst_helper_funcs);

	mst_enc = radeon_encoder->enc_priv;
	mst_enc->connector = connector;
	mst_enc->primary = FUNC6(enc_master);
	radeon_encoder->is_mst_encoder = true;
	return radeon_encoder;
}