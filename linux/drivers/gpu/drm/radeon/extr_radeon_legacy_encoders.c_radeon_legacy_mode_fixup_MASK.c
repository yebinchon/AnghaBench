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
struct radeon_encoder {int active_device; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;

/* Variables and functions */
 int ATOM_DEVICE_LCD_SUPPORT ; 
 int /*<<< orphan*/  FUNC0 (struct drm_display_mode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*,struct drm_display_mode*) ; 
 struct radeon_encoder* FUNC3 (struct drm_encoder*) ; 

__attribute__((used)) static bool FUNC4(struct drm_encoder *encoder,
				     const struct drm_display_mode *mode,
				     struct drm_display_mode *adjusted_mode)
{
	struct radeon_encoder *radeon_encoder = FUNC3(encoder);

	/* set the active encoder to connector routing */
	FUNC1(encoder);
	FUNC0(adjusted_mode, 0);

	/* get the native mode for LVDS */
	if (radeon_encoder->active_device & (ATOM_DEVICE_LCD_SUPPORT))
		FUNC2(encoder, adjusted_mode);

	return true;
}