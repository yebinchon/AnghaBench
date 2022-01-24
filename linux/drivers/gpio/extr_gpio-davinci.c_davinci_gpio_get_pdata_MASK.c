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
typedef  void* u32 ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct davinci_gpio_platform_data {void* gpio_unbanked; void* ngpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 struct davinci_gpio_platform_data* FUNC2 (TYPE_1__*) ; 
 struct davinci_gpio_platform_data* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device_node*,char*,void**) ; 

__attribute__((used)) static struct davinci_gpio_platform_data *
FUNC5(struct platform_device *pdev)
{
	struct device_node *dn = pdev->dev.of_node;
	struct davinci_gpio_platform_data *pdata;
	int ret;
	u32 val;

	if (!FUNC0(CONFIG_OF) || !pdev->dev.of_node)
		return FUNC2(&pdev->dev);

	pdata = FUNC3(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return NULL;

	ret = FUNC4(dn, "ti,ngpio", &val);
	if (ret)
		goto of_err;

	pdata->ngpio = val;

	ret = FUNC4(dn, "ti,davinci-gpio-unbanked", &val);
	if (ret)
		goto of_err;

	pdata->gpio_unbanked = val;

	return pdata;

of_err:
	FUNC1(&pdev->dev, "Populating pdata from DT failed: err %d\n", ret);
	return NULL;
}