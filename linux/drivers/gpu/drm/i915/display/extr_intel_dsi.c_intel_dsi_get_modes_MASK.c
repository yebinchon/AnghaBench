#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  fixed_mode; } ;
struct intel_connector {TYPE_1__ panel; } ;
struct drm_display_mode {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct drm_display_mode* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct drm_display_mode*) ; 
 struct intel_connector* FUNC3 (struct drm_connector*) ; 

int FUNC4(struct drm_connector *connector)
{
	struct intel_connector *intel_connector = FUNC3(connector);
	struct drm_display_mode *mode;

	FUNC0("\n");

	if (!intel_connector->panel.fixed_mode) {
		FUNC0("no fixed mode\n");
		return 0;
	}

	mode = FUNC1(connector->dev,
				  intel_connector->panel.fixed_mode);
	if (!mode) {
		FUNC0("drm_mode_duplicate failed\n");
		return 0;
	}

	FUNC2(connector, mode);
	return 1;
}