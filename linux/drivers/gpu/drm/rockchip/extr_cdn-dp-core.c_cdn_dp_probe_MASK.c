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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct phy {int dummy; } ;
struct of_device_id {scalar_t__ data; } ;
typedef  struct phy extcon_dev ;
struct cdn_dp_port {int id; struct cdn_dp_device* dp; struct phy* phy; struct phy* extcon; } ;
struct cdn_dp_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  ports; struct cdn_dp_port** port; struct device* dev; } ;
struct cdn_dp_data {int max_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct phy*) ; 
 int FUNC2 (struct phy*) ; 
 int /*<<< orphan*/  FUNC3 (struct cdn_dp_device*,struct device*) ; 
 int /*<<< orphan*/  cdn_dp_component_ops ; 
 int /*<<< orphan*/  cdn_dp_dt_ids ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct cdn_dp_device*) ; 
 void* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy* FUNC7 (struct device*,int /*<<< orphan*/ ,int) ; 
 struct phy* FUNC8 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	const struct of_device_id *match;
	struct cdn_dp_data *dp_data;
	struct cdn_dp_port *port;
	struct cdn_dp_device *dp;
	struct extcon_dev *extcon;
	struct phy *phy;
	int i;

	dp = FUNC6(dev, sizeof(*dp), GFP_KERNEL);
	if (!dp)
		return -ENOMEM;
	dp->dev = dev;

	match = FUNC10(cdn_dp_dt_ids, pdev->dev.of_node);
	dp_data = (struct cdn_dp_data *)match->data;

	for (i = 0; i < dp_data->max_phy; i++) {
		extcon = FUNC8(dev, i);
		phy = FUNC7(dev, dev->of_node, i);

		if (FUNC2(extcon) == -EPROBE_DEFER ||
		    FUNC2(phy) == -EPROBE_DEFER)
			return -EPROBE_DEFER;

		if (FUNC1(extcon) || FUNC1(phy))
			continue;

		port = FUNC6(dev, sizeof(*port), GFP_KERNEL);
		if (!port)
			return -ENOMEM;

		port->extcon = extcon;
		port->phy = phy;
		port->dp = dp;
		port->id = i;
		dp->port[dp->ports++] = port;
	}

	if (!dp->ports) {
		FUNC0(dev, "missing extcon or phy\n");
		return -EINVAL;
	}

	FUNC9(&dp->lock);
	FUNC5(dev, dp);

	FUNC3(dp, dev);

	return FUNC4(dev, &cdn_dp_component_ops);
}