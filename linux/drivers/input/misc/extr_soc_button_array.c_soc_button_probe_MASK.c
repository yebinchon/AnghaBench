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
struct soc_device_data {int (* check ) (struct device*) ;struct soc_button_info* button_info; } ;
struct device {int dummy; } ;
struct soc_button_info {struct device dev; } ;
struct soc_button_data {struct soc_button_info const** children; } ;
typedef  struct platform_device {struct device dev; } const platform_device ;

/* Variables and functions */
 int BUTTON_TYPES ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct soc_button_info const*) ; 
 int FUNC1 (struct soc_button_info const*) ; 
 struct soc_device_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct soc_button_info const*) ; 
 struct soc_button_data* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct soc_button_info const*,struct soc_button_data*) ; 
 struct soc_button_info* FUNC8 (struct soc_button_info const*,struct soc_button_info const*,int) ; 
 struct soc_button_info* FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct soc_button_info const*) ; 
 int FUNC11 (struct device*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	const struct soc_device_data *device_data;
	const struct soc_button_info *button_info;
	struct soc_button_data *priv;
	struct platform_device *pd;
	int i;
	int error;

	device_data = FUNC2(dev);
	if (device_data && device_data->check) {
		error = device_data->check(dev);
		if (error)
			return error;
	}

	if (device_data && device_data->button_info) {
		button_info = device_data->button_info;
	} else {
		button_info = FUNC9(dev);
		if (FUNC0(button_info))
			return FUNC1(button_info);
	}

	error = FUNC6(dev, NULL);
	if (error < 0) {
		FUNC3(dev, "no GPIO attached, ignoring...\n");
		return -ENODEV;
	}

	priv = FUNC5(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC7(pdev, priv);

	for (i = 0; i < BUTTON_TYPES; i++) {
		pd = FUNC8(pdev, button_info, i == 0);
		if (FUNC0(pd)) {
			error = FUNC1(pd);
			if (error != -ENODEV) {
				FUNC10(pdev);
				return error;
			}
			continue;
		}

		priv->children[i] = pd;
	}

	if (!priv->children[0] && !priv->children[1])
		return -ENODEV;

	if (!device_data || !device_data->button_info)
		FUNC4(dev, button_info);

	return 0;
}