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
struct intel_connector {TYPE_1__ panel; int /*<<< orphan*/  edid; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 struct drm_display_mode* FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,struct drm_display_mode*) ; 
 struct intel_connector* FUNC4 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC5(struct drm_connector *connector)
{
	struct intel_connector *intel_connector = FUNC4(connector);
	struct drm_device *dev = connector->dev;
	struct drm_display_mode *mode;

	/* use cached edid if we have one */
	if (!FUNC0(intel_connector->edid))
		return FUNC1(connector, intel_connector->edid);

	mode = FUNC2(dev, intel_connector->panel.fixed_mode);
	if (mode == NULL)
		return 0;

	FUNC3(connector, mode);
	return 1;
}