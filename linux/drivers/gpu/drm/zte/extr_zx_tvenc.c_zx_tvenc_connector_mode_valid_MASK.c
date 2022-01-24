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
struct zx_tvenc_mode {int dummy; } ;
struct zx_tvenc {int /*<<< orphan*/  dev; } ;
struct drm_display_mode {int /*<<< orphan*/  name; } ;
struct drm_connector {int dummy; } ;
typedef  enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int MODE_NOMODE ; 
 int MODE_OK ; 
 struct zx_tvenc* FUNC1 (struct drm_connector*) ; 
 struct zx_tvenc_mode* FUNC2 (struct drm_display_mode*) ; 

__attribute__((used)) static enum drm_mode_status
FUNC3(struct drm_connector *connector,
			      struct drm_display_mode *mode)
{
	struct zx_tvenc *tvenc = FUNC1(connector);
	const struct zx_tvenc_mode *zmode;

	zmode = FUNC2(mode);
	if (!zmode) {
		FUNC0(tvenc->dev, "unsupported mode: %s\n", mode->name);
		return MODE_NOMODE;
	}

	return MODE_OK;
}