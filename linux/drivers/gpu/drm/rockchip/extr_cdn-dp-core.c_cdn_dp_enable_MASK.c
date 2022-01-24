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
struct cdn_dp_port {int id; int /*<<< orphan*/  lanes; } ;
struct cdn_dp_device {int active; int ports; int /*<<< orphan*/  lanes; struct cdn_dp_port** port; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (struct cdn_dp_device*) ; 
 int FUNC2 (struct cdn_dp_device*) ; 
 struct cdn_dp_port* FUNC3 (struct cdn_dp_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct cdn_dp_device*,struct cdn_dp_port*) ; 
 int FUNC5 (struct cdn_dp_device*,struct cdn_dp_port*) ; 
 int FUNC6 (struct cdn_dp_device*) ; 
 int FUNC7 (struct cdn_dp_port*) ; 
 int FUNC8 (struct cdn_dp_device*) ; 

__attribute__((used)) static int FUNC9(struct cdn_dp_device *dp)
{
	int ret, i, lanes;
	struct cdn_dp_port *port;

	port = FUNC3(dp);
	if (!port) {
		FUNC0(dp->dev,
			      "Can't enable without connection\n");
		return -ENODEV;
	}

	if (dp->active)
		return 0;

	ret = FUNC2(dp);
	if (ret)
		return ret;

	ret = FUNC6(dp);
	if (ret) {
		FUNC0(dp->dev, "firmware init failed: %d", ret);
		goto err_clk_disable;
	}

	/* only enable the port that connected with downstream device */
	for (i = port->id; i < dp->ports; i++) {
		port = dp->port[i];
		lanes = FUNC7(port);
		if (lanes) {
			ret = FUNC5(dp, port);
			if (ret)
				continue;

			ret = FUNC8(dp);
			if (ret) {
				FUNC4(dp, port);
			} else {
				dp->active = true;
				dp->lanes = port->lanes;
				return 0;
			}
		}
	}

err_clk_disable:
	FUNC1(dp);
	return ret;
}