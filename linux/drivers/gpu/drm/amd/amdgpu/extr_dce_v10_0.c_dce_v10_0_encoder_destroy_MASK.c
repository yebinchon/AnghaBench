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
struct amdgpu_encoder {int devices; struct amdgpu_encoder* enc_priv; } ;

/* Variables and functions */
 int ATOM_DEVICE_LCD_SUPPORT ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_encoder*) ; 
 struct amdgpu_encoder* FUNC3 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC4(struct drm_encoder *encoder)
{
	struct amdgpu_encoder *amdgpu_encoder = FUNC3(encoder);
	if (amdgpu_encoder->devices & (ATOM_DEVICE_LCD_SUPPORT))
		FUNC0(amdgpu_encoder);
	FUNC2(amdgpu_encoder->enc_priv);
	FUNC1(encoder);
	FUNC2(amdgpu_encoder);
}