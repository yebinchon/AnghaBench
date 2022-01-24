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
struct omap_dss_device {TYPE_1__* ops; } ;
struct omap_connector {int /*<<< orphan*/  hdmi_mode; } ;
struct drm_connector {int dummy; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_2__ {scalar_t__ (* read_edid ) (struct omap_dss_device*,void*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_EDID ; 
 int connector_status_connected ; 
 int FUNC0 (struct drm_connector*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct drm_connector*,int) ; 
 scalar_t__ FUNC7 (struct omap_dss_device*,void*,int /*<<< orphan*/ ) ; 
 struct omap_connector* FUNC8 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC9(struct drm_connector *connector,
					 struct omap_dss_device *dssdev)
{
	struct omap_connector *omap_connector = FUNC8(connector);
	enum drm_connector_status status;
	void *edid;
	int n;

	status = FUNC6(connector, false);
	if (status != connector_status_connected)
		goto no_edid;

	edid = FUNC5(MAX_EDID, GFP_KERNEL);
	if (!edid)
		goto no_edid;

	if (dssdev->ops->read_edid(dssdev, edid, MAX_EDID) <= 0 ||
	    !FUNC3(edid)) {
		FUNC4(edid);
		goto no_edid;
	}

	FUNC1(connector, edid);
	n = FUNC0(connector, edid);

	omap_connector->hdmi_mode = FUNC2(edid);

	FUNC4(edid);
	return n;

no_edid:
	FUNC1(connector, NULL);
	return 0;
}