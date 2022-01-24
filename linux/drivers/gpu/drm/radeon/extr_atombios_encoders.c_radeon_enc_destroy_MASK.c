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
struct radeon_encoder {int devices; struct radeon_encoder* enc_priv; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int ATOM_DEVICE_LCD_SUPPORT ; 
 int /*<<< orphan*/  FUNC0 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_encoder*) ; 
 struct radeon_encoder* FUNC3 (struct drm_encoder*) ; 

void FUNC4(struct drm_encoder *encoder)
{
	struct radeon_encoder *radeon_encoder = FUNC3(encoder);
	if (radeon_encoder->devices & (ATOM_DEVICE_LCD_SUPPORT))
		FUNC2(radeon_encoder);
	FUNC1(radeon_encoder->enc_priv);
	FUNC0(encoder);
	FUNC1(radeon_encoder);
}