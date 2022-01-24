#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; TYPE_4__* parent; } ;
struct TYPE_6__ {TYPE_1__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; int /*<<< orphan*/  owner; } ;
struct tegra_bpmp_i2c {TYPE_2__ adapter; int /*<<< orphan*/  bus; int /*<<< orphan*/  bpmp; TYPE_4__* dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_4__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tegra_bpmp_i2c* FUNC1 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct tegra_bpmp_i2c*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct tegra_bpmp_i2c*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tegra_bpmp_i2c_algo ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct tegra_bpmp_i2c *i2c;
	u32 value;
	int err;

	i2c = FUNC1(&pdev->dev, sizeof(*i2c), GFP_KERNEL);
	if (!i2c)
		return -ENOMEM;

	i2c->dev = &pdev->dev;

	i2c->bpmp = FUNC0(pdev->dev.parent);
	if (!i2c->bpmp)
		return -ENODEV;

	err = FUNC4(pdev->dev.of_node, "nvidia,bpmp-bus-id",
				   &value);
	if (err < 0)
		return err;

	i2c->bus = value;

	FUNC3(&i2c->adapter, i2c);
	i2c->adapter.owner = THIS_MODULE;
	FUNC6(i2c->adapter.name, "Tegra BPMP I2C adapter",
		sizeof(i2c->adapter.name));
	i2c->adapter.algo = &tegra_bpmp_i2c_algo;
	i2c->adapter.dev.parent = &pdev->dev;
	i2c->adapter.dev.of_node = pdev->dev.of_node;

	FUNC5(pdev, i2c);

	return FUNC2(&i2c->adapter);
}