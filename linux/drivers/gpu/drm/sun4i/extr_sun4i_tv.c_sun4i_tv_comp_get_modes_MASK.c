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
struct tv_mode {int /*<<< orphan*/  name; } ;
struct drm_display_mode {int /*<<< orphan*/  name; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct tv_mode*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct drm_display_mode* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tv_mode const*,struct drm_display_mode*) ; 
 struct tv_mode* tv_modes ; 

__attribute__((used)) static int FUNC6(struct drm_connector *connector)
{
	int i;

	for (i = 0; i < FUNC0(tv_modes); i++) {
		struct drm_display_mode *mode;
		const struct tv_mode *tv_mode = &tv_modes[i];

		mode = FUNC2(connector->dev);
		if (!mode) {
			FUNC1("Failed to create a new display mode\n");
			return 0;
		}

		FUNC4(mode->name, tv_mode->name);

		FUNC5(tv_mode, mode);
		FUNC3(connector, mode);
	}

	return i;
}