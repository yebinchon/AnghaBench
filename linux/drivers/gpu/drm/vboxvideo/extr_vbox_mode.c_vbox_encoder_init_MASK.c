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
struct vbox_encoder {struct drm_encoder base; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_ENCODER_DAC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct vbox_encoder* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vbox_enc_funcs ; 

__attribute__((used)) static struct drm_encoder *FUNC2(struct drm_device *dev,
					     unsigned int i)
{
	struct vbox_encoder *vbox_encoder;

	vbox_encoder = FUNC1(sizeof(*vbox_encoder), GFP_KERNEL);
	if (!vbox_encoder)
		return NULL;

	FUNC0(dev, &vbox_encoder->base, &vbox_enc_funcs,
			 DRM_MODE_ENCODER_DAC, NULL);

	vbox_encoder->base.possible_crtcs = 1 << i;
	return &vbox_encoder->base;
}