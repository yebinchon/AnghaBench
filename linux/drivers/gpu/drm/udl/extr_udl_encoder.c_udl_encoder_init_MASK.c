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
struct drm_encoder {int possible_crtcs; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_ENCODER_TMDS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct drm_encoder* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  udl_enc_funcs ; 
 int /*<<< orphan*/  udl_helper_funcs ; 

struct drm_encoder *FUNC3(struct drm_device *dev)
{
	struct drm_encoder *encoder;

	encoder = FUNC2(sizeof(struct drm_encoder), GFP_KERNEL);
	if (!encoder)
		return NULL;

	FUNC1(dev, encoder, &udl_enc_funcs, DRM_MODE_ENCODER_TMDS,
			 NULL);
	FUNC0(encoder, &udl_helper_funcs);
	encoder->possible_crtcs = 1;
	return encoder;
}