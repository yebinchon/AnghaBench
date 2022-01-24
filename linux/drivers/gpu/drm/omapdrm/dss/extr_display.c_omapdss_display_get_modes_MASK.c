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
struct videomode {int dummy; } ;
struct drm_display_mode {int type; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DRM_MODE_TYPE_DRIVER ; 
 int DRM_MODE_TYPE_PREFERRED ; 
 int /*<<< orphan*/  FUNC0 (struct videomode const*,struct drm_display_mode*) ; 
 struct drm_display_mode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_display_mode*) ; 

int FUNC4(struct drm_connector *connector,
			      const struct videomode *vm)
{
	struct drm_display_mode *mode;

	mode = FUNC1(connector->dev);
	if (!mode)
		return 0;

	FUNC0(vm, mode);

	mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
	FUNC3(mode);
	FUNC2(connector, mode);

	return 1;
}