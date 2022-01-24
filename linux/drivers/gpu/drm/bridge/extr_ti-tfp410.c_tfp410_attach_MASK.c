#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int polled; int /*<<< orphan*/  display_info; } ;
struct tfp410 {scalar_t__ hpd_irq; TYPE_1__ connector; int /*<<< orphan*/  bus_format; int /*<<< orphan*/  dev; int /*<<< orphan*/  ddc; int /*<<< orphan*/  connector_type; } ;
struct drm_bridge {int /*<<< orphan*/  encoder; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DRM_CONNECTOR_POLL_CONNECT ; 
 int DRM_CONNECTOR_POLL_DISCONNECT ; 
 int DRM_CONNECTOR_POLL_HPD ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct tfp410* FUNC1 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  tfp410_con_funcs ; 
 int /*<<< orphan*/  tfp410_con_helper_funcs ; 

__attribute__((used)) static int FUNC6(struct drm_bridge *bridge)
{
	struct tfp410 *dvi = FUNC1(bridge);
	int ret;

	if (!bridge->encoder) {
		FUNC0(dvi->dev, "Missing encoder\n");
		return -ENODEV;
	}

	if (dvi->hpd_irq >= 0)
		dvi->connector.polled = DRM_CONNECTOR_POLL_HPD;
	else
		dvi->connector.polled = DRM_CONNECTOR_POLL_CONNECT | DRM_CONNECTOR_POLL_DISCONNECT;

	FUNC3(&dvi->connector,
				 &tfp410_con_helper_funcs);
	ret = FUNC4(bridge->dev, &dvi->connector,
					  &tfp410_con_funcs,
					  dvi->connector_type,
					  dvi->ddc);
	if (ret) {
		FUNC0(dvi->dev, "drm_connector_init() failed: %d\n", ret);
		return ret;
	}

	FUNC5(&dvi->connector.display_info,
					 &dvi->bus_format, 1);

	FUNC2(&dvi->connector,
					  bridge->encoder);

	return 0;
}