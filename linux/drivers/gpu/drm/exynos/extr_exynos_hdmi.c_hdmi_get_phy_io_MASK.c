#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hdmi_context {int /*<<< orphan*/  hdmiphy_port; TYPE_2__* dev; int /*<<< orphan*/  regs_hdmiphy; TYPE_1__* drv_data; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_3__ {scalar_t__ is_apb_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 struct device_node* FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hdmi_context *hdata)
{
	const char *compatible_str = "samsung,exynos4212-hdmiphy";
	struct device_node *np;
	int ret = 0;

	np = FUNC2(NULL, NULL, compatible_str);
	if (!np) {
		np = FUNC6(hdata->dev->of_node, "phy", 0);
		if (!np) {
			FUNC0(hdata->dev,
				      "Failed to find hdmiphy node in device tree\n");
			return -ENODEV;
		}
	}

	if (hdata->drv_data->is_apb_phy) {
		hdata->regs_hdmiphy = FUNC4(np, 0);
		if (!hdata->regs_hdmiphy) {
			FUNC0(hdata->dev,
				      "failed to ioremap hdmi phy\n");
			ret = -ENOMEM;
			goto out;
		}
	} else {
		hdata->hdmiphy_port = FUNC3(np);
		if (!hdata->hdmiphy_port) {
			FUNC1("Failed to get hdmi phy i2c client\n");
			ret = -EPROBE_DEFER;
			goto out;
		}
	}

out:
	FUNC5(np);
	return ret;
}