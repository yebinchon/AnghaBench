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
struct intel_encoder {int dummy; } ;
struct drm_display_mode {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_TYPE_PREFERRED ; 
 int /*<<< orphan*/  FUNC1 (struct drm_display_mode*) ; 
 struct drm_display_mode* FUNC2 (struct intel_encoder*) ; 

__attribute__((used)) static struct drm_display_mode *
FUNC3(struct intel_encoder *encoder)
{
	struct drm_display_mode *mode;

	mode = FUNC2(encoder);
	if (mode) {
		FUNC0("using current (BIOS) mode: ");
		FUNC1(mode);
		mode->type |= DRM_MODE_TYPE_PREFERRED;
	}

	return mode;
}