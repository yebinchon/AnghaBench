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
struct drm_encoder {int dummy; } ;
struct amdgpu_encoder_atom_dig {int dig_encoder; } ;
struct amdgpu_encoder {scalar_t__ active_device; struct amdgpu_encoder_atom_dig* enc_priv; } ;

/* Variables and functions */
 int ATOM_ENCODER_MODE_HDMI ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_encoder*) ; 
 scalar_t__ FUNC3 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,int) ; 
 struct amdgpu_encoder* FUNC5 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC6(struct drm_encoder *encoder)
{

	struct amdgpu_encoder *amdgpu_encoder = FUNC5(encoder);
	struct amdgpu_encoder_atom_dig *dig;
	int em = FUNC2(encoder);

	FUNC1(encoder, DRM_MODE_DPMS_OFF);

	if (FUNC3(encoder)) {
		if (em == ATOM_ENCODER_MODE_HDMI || FUNC0(em))
			FUNC4(encoder, false);
		dig = amdgpu_encoder->enc_priv;
		dig->dig_encoder = -1;
	}
	amdgpu_encoder->active_device = 0;
}