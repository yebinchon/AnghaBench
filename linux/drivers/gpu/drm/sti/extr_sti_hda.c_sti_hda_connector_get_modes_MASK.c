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
struct sti_hda_connector {struct sti_hda* hda; } ;
struct sti_hda {int /*<<< orphan*/  drm_dev; } ;
struct drm_display_mode {int /*<<< orphan*/  type; int /*<<< orphan*/  vrefresh; } ;
struct drm_connector {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_TYPE_PREFERRED ; 
 struct drm_display_mode* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_display_mode*) ; 
 TYPE_1__* hda_supported_modes ; 
 struct sti_hda_connector* FUNC5 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC6(struct drm_connector *connector)
{
	unsigned int i;
	int count = 0;
	struct sti_hda_connector *hda_connector
		= FUNC5(connector);
	struct sti_hda *hda = hda_connector->hda;

	FUNC1("\n");

	for (i = 0; i < FUNC0(hda_supported_modes); i++) {
		struct drm_display_mode *mode =
			FUNC2(hda->drm_dev,
					&hda_supported_modes[i].mode);
		if (!mode)
			continue;
		mode->vrefresh = FUNC4(mode);

		/* the first mode is the preferred mode */
		if (i == 0)
			mode->type |= DRM_MODE_TYPE_PREFERRED;

		FUNC3(connector, mode);
		count++;
	}

	return count;
}