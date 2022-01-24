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
struct zforce_ts_platdata {int /*<<< orphan*/  y_max; int /*<<< orphan*/  x_max; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct zforce_ts_platdata* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct zforce_ts_platdata* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct zforce_ts_platdata *FUNC4(struct device *dev)
{
	struct zforce_ts_platdata *pdata;
	struct device_node *np = dev->of_node;

	if (!np)
		return FUNC0(-ENOENT);

	pdata = FUNC2(dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata) {
		FUNC1(dev, "failed to allocate platform data\n");
		return FUNC0(-ENOMEM);
	}

	if (FUNC3(np, "x-size", &pdata->x_max)) {
		FUNC1(dev, "failed to get x-size property\n");
		return FUNC0(-EINVAL);
	}

	if (FUNC3(np, "y-size", &pdata->y_max)) {
		FUNC1(dev, "failed to get y-size property\n");
		return FUNC0(-EINVAL);
	}

	return pdata;
}