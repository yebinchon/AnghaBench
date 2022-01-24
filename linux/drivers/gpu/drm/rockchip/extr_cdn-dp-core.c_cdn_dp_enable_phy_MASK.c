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
union extcon_property_value {int /*<<< orphan*/  intval; } ;
struct cdn_dp_port {int phy_enabled; int /*<<< orphan*/  phy; int /*<<< orphan*/  id; int /*<<< orphan*/  lanes; int /*<<< orphan*/  extcon; } ;
struct cdn_dp_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  active_port; } ;

/* Variables and functions */
 int DPTX_HPD_DEL ; 
 int DPTX_HPD_SEL ; 
 int DPTX_HPD_SEL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  EXTCON_DISP_DP ; 
 int /*<<< orphan*/  EXTCON_PROP_USB_TYPEC_POLARITY ; 
 int /*<<< orphan*/  GRF_SOC_CON26 ; 
 int FUNC1 (struct cdn_dp_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct cdn_dp_port*) ; 
 int FUNC3 (struct cdn_dp_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct cdn_dp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union extcon_property_value*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct cdn_dp_device *dp, struct cdn_dp_port *port)
{
	union extcon_property_value property;
	int ret;

	if (!port->phy_enabled) {
		ret = FUNC7(port->phy);
		if (ret) {
			FUNC0(dp->dev, "phy power on failed: %d\n",
				      ret);
			goto err_phy;
		}
		port->phy_enabled = true;
	}

	ret = FUNC3(dp, GRF_SOC_CON26,
			       DPTX_HPD_SEL_MASK | DPTX_HPD_SEL);
	if (ret) {
		FUNC0(dp->dev, "Failed to write HPD_SEL %d\n", ret);
		goto err_power_on;
	}

	ret = FUNC1(dp);
	if (ret <= 0) {
		if (!ret)
			FUNC0(dp->dev, "hpd does not exist\n");
		goto err_power_on;
	}

	ret = FUNC5(port->extcon, EXTCON_DISP_DP,
				  EXTCON_PROP_USB_TYPEC_POLARITY, &property);
	if (ret) {
		FUNC0(dp->dev, "get property failed\n");
		goto err_power_on;
	}

	port->lanes = FUNC2(port);
	ret = FUNC4(dp, port->lanes, property.intval);
	if (ret) {
		FUNC0(dp->dev, "set host capabilities failed: %d\n",
			      ret);
		goto err_power_on;
	}

	dp->active_port = port->id;
	return 0;

err_power_on:
	if (FUNC6(port->phy))
		FUNC0(dp->dev, "phy power off failed: %d", ret);
	else
		port->phy_enabled = false;

err_phy:
	FUNC3(dp, GRF_SOC_CON26,
			 DPTX_HPD_SEL_MASK | DPTX_HPD_DEL);
	return ret;
}