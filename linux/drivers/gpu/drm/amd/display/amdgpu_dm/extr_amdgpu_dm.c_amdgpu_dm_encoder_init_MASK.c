#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct TYPE_3__ {int /*<<< orphan*/  possible_crtcs; } ;
struct amdgpu_encoder {int encoder_id; TYPE_1__ base; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_ENCODER_TMDS ; 
 int /*<<< orphan*/  amdgpu_dm_encoder_funcs ; 
 int /*<<< orphan*/  amdgpu_dm_encoder_helper_funcs ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drm_device*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct drm_device *dev,
				  struct amdgpu_encoder *aencoder,
				  uint32_t link_index)
{
	struct amdgpu_device *adev = dev->dev_private;

	int res = FUNC2(dev,
				   &aencoder->base,
				   &amdgpu_dm_encoder_funcs,
				   DRM_MODE_ENCODER_TMDS,
				   NULL);

	aencoder->base.possible_crtcs = FUNC0(adev);

	if (!res)
		aencoder->encoder_id = link_index;
	else
		aencoder->encoder_id = -1;

	FUNC1(&aencoder->base, &amdgpu_dm_encoder_helper_funcs);

	return res;
}