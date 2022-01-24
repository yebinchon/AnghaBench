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
struct sti_hdmi_connector {struct drm_property* colorspace_property; struct sti_hdmi* hdmi; } ;
struct sti_hdmi {int /*<<< orphan*/  colorspace; } ;
struct drm_property {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEFAULT_COLORSPACE_MODE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  colorspace_mode_names ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct drm_property*,int /*<<< orphan*/ ) ; 
 struct drm_property* FUNC3 (struct drm_device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sti_hdmi_connector* FUNC4 (struct drm_connector*) ; 

__attribute__((used)) static void FUNC5(struct drm_device *drm_dev,
					     struct drm_connector *connector)
{
	struct sti_hdmi_connector *hdmi_connector
		= FUNC4(connector);
	struct sti_hdmi *hdmi = hdmi_connector->hdmi;
	struct drm_property *prop;

	/* colorspace property */
	hdmi->colorspace = DEFAULT_COLORSPACE_MODE;
	prop = FUNC3(drm_dev, 0, "colorspace",
					colorspace_mode_names,
					FUNC0(colorspace_mode_names));
	if (!prop) {
		FUNC1("fails to create colorspace property\n");
		return;
	}
	hdmi_connector->colorspace_property = prop;
	FUNC2(&connector->base, prop, hdmi->colorspace);
}