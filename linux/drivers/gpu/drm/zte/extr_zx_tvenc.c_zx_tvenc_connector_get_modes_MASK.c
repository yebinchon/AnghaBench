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
struct zx_tvenc_mode {int /*<<< orphan*/  mode; } ;
struct zx_tvenc {struct device* dev; } ;
struct drm_display_mode {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct zx_tvenc_mode**) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct drm_display_mode* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_display_mode*) ; 
 struct zx_tvenc* FUNC5 (struct drm_connector*) ; 
 struct zx_tvenc_mode** tvenc_modes ; 

__attribute__((used)) static int FUNC6(struct drm_connector *connector)
{
	struct zx_tvenc *tvenc = FUNC5(connector);
	struct device *dev = tvenc->dev;
	int i;

	for (i = 0; i < FUNC0(tvenc_modes); i++) {
		const struct zx_tvenc_mode *zmode = tvenc_modes[i];
		struct drm_display_mode *mode;

		mode = FUNC2(connector->dev, &zmode->mode);
		if (!mode) {
			FUNC1(dev, "failed to duplicate drm mode\n");
			continue;
		}

		FUNC4(mode);
		FUNC3(connector, mode);
	}

	return i;
}