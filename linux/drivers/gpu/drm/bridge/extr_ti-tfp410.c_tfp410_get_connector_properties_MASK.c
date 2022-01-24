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
struct tfp410 {TYPE_1__* dev; int /*<<< orphan*/  ddc; int /*<<< orphan*/ * hpd; int /*<<< orphan*/  connector_type; } ;
struct device_node {int /*<<< orphan*/  fwnode; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_DVID ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_HDMIA ; 
 int ENODEV ; 
 int ENOENT ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 struct device_node* FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 struct device_node* FUNC8 (struct device_node*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct tfp410 *dvi)
{
	struct device_node *connector_node, *ddc_phandle;
	int ret = 0;

	/* port@1 is the connector node */
	connector_node = FUNC6(dvi->dev->of_node, 1, -1);
	if (!connector_node)
		return -ENODEV;

	if (FUNC4(connector_node, "hdmi-connector"))
		dvi->connector_type = DRM_MODE_CONNECTOR_HDMIA;
	else
		dvi->connector_type = DRM_MODE_CONNECTOR_DVID;

	dvi->hpd = FUNC3(&connector_node->fwnode,
					"hpd-gpios", 0, GPIOD_IN, "hpd");
	if (FUNC0(dvi->hpd)) {
		ret = FUNC1(dvi->hpd);
		dvi->hpd = NULL;
		if (ret == -ENOENT)
			ret = 0;
		else
			goto fail;
	}

	ddc_phandle = FUNC8(connector_node, "ddc-i2c-bus", 0);
	if (!ddc_phandle)
		goto fail;

	dvi->ddc = FUNC5(ddc_phandle);
	if (dvi->ddc)
		FUNC2(dvi->dev, "Connector's ddc i2c bus found\n");
	else
		ret = -EPROBE_DEFER;

	FUNC7(ddc_phandle);

fail:
	FUNC7(connector_node);
	return ret;
}