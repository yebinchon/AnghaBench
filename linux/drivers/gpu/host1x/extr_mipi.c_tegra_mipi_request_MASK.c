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
struct tegra_mipi_device {int /*<<< orphan*/  pdev; struct device* device; int /*<<< orphan*/  pads; int /*<<< orphan*/  mipi; } ;
struct of_phandle_args {int /*<<< orphan*/  np; int /*<<< orphan*/ * args; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 struct tegra_mipi_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_mipi_device*) ; 
 struct tegra_mipi_device* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device_node*,char*,char*,int /*<<< orphan*/ ,struct of_phandle_args*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

struct tegra_mipi_device *FUNC8(struct device *device)
{
	struct device_node *np = device->of_node;
	struct tegra_mipi_device *dev;
	struct of_phandle_args args;
	int err;

	err = FUNC5(np, "nvidia,mipi-calibrate",
					 "#nvidia,mipi-calibrate-cells", 0,
					 &args);
	if (err < 0)
		return FUNC0(err);

	dev = FUNC2(sizeof(*dev), GFP_KERNEL);
	if (!dev) {
		err = -ENOMEM;
		goto out;
	}

	dev->pdev = FUNC3(args.np);
	if (!dev->pdev) {
		err = -ENODEV;
		goto free;
	}

	dev->mipi = FUNC7(dev->pdev);
	if (!dev->mipi) {
		err = -EPROBE_DEFER;
		goto put;
	}

	FUNC4(args.np);

	dev->pads = args.args[0];
	dev->device = device;

	return dev;

put:
	FUNC6(dev->pdev);
free:
	FUNC1(dev);
out:
	FUNC4(args.np);
	return FUNC0(err);
}