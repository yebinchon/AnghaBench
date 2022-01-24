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
struct i2c_adapter {int dummy; } ;
struct hdmi_context {struct i2c_adapter* ddc_adpt; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENODEV ; 
 int EPROBE_DEFER ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 struct i2c_adapter* FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 struct device_node* FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hdmi_context *hdata)
{
	const char *compatible_str = "samsung,exynos4210-hdmiddc";
	struct device_node *np;
	struct i2c_adapter *adpt;

	np = FUNC2(NULL, NULL, compatible_str);
	if (np)
		np = FUNC4(np);
	else
		np = FUNC6(hdata->dev->of_node, "ddc", 0);

	if (!np) {
		FUNC0(hdata->dev,
			      "Failed to find ddc node in device tree\n");
		return -ENODEV;
	}

	adpt = FUNC3(np);
	FUNC5(np);

	if (!adpt) {
		FUNC1("Failed to get ddc i2c adapter by node\n");
		return -EPROBE_DEFER;
	}

	hdata->ddc_adpt = adpt;

	return 0;
}