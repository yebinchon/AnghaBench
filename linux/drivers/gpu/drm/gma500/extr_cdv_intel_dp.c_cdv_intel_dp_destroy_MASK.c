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
struct gma_encoder {struct cdv_intel_dp* dev_priv; } ;
struct drm_connector {int dummy; } ;
struct cdv_intel_dp {int /*<<< orphan*/  adapter; struct drm_connector* panel_fixed_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*) ; 
 struct gma_encoder* FUNC2 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector*) ; 

__attribute__((used)) static void
FUNC6(struct drm_connector *connector)
{
	struct gma_encoder *gma_encoder = FUNC2(connector);
	struct cdv_intel_dp *intel_dp = gma_encoder->dev_priv;

	if (FUNC4(gma_encoder)) {
	/*	cdv_intel_panel_destroy_backlight(connector->dev); */
		FUNC5(intel_dp->panel_fixed_mode);
		intel_dp->panel_fixed_mode = NULL;
	}
	FUNC3(&intel_dp->adapter);
	FUNC1(connector);
	FUNC0(connector);
	FUNC5(connector);
}