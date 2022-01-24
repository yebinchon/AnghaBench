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
struct drm_encoder {int /*<<< orphan*/  possible_crtcs; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_encoder {struct drm_encoder base; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct amdgpu_dm_connector {TYPE_1__ base; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_ENCODER_DPMST ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  amdgpu_dm_encoder_funcs ; 
 int /*<<< orphan*/  amdgpu_dm_encoder_helper_funcs ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct amdgpu_encoder* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct amdgpu_encoder *
FUNC4(struct amdgpu_dm_connector *connector)
{
	struct drm_device *dev = connector->base.dev;
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_encoder *amdgpu_encoder;
	struct drm_encoder *encoder;

	amdgpu_encoder = FUNC3(sizeof(*amdgpu_encoder), GFP_KERNEL);
	if (!amdgpu_encoder)
		return NULL;

	encoder = &amdgpu_encoder->base;
	encoder->possible_crtcs = FUNC0(adev);

	FUNC2(
		dev,
		&amdgpu_encoder->base,
		&amdgpu_dm_encoder_funcs,
		DRM_MODE_ENCODER_DPMST,
		NULL);

	FUNC1(encoder, &amdgpu_dm_encoder_helper_funcs);

	return amdgpu_encoder;
}