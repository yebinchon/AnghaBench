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
struct videomode {int dummy; } ;
struct exynos_dpi {int /*<<< orphan*/  panel_node; struct videomode* vm; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FIMD_PORT_RGB ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct videomode*) ; 
 struct videomode* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC2 (struct device_node*,char*) ; 
 int FUNC3 (struct device_node*,struct videomode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 

__attribute__((used)) static int FUNC6(struct exynos_dpi *ctx)
{
	struct device *dev = ctx->dev;
	struct device_node *dn = dev->of_node;
	struct device_node *np;

	ctx->panel_node = FUNC4(dn, FIMD_PORT_RGB, 0);

	np = FUNC2(dn, "display-timings");
	if (np) {
		struct videomode *vm;
		int ret;

		FUNC5(np);

		vm = FUNC1(dev, sizeof(*ctx->vm), GFP_KERNEL);
		if (!vm)
			return -ENOMEM;

		ret = FUNC3(dn, vm, 0);
		if (ret < 0) {
			FUNC0(dev, vm);
			return ret;
		}

		ctx->vm = vm;

		return 0;
	}

	if (!ctx->panel_node)
		return -EINVAL;

	return 0;
}