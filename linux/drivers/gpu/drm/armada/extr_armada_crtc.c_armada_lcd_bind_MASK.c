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
struct resource {int dummy; } ;
struct platform_device_id {scalar_t__ driver_data; } ;
struct platform_device {int dummy; } ;
struct of_device_id {struct armada_variant* data; } ;
struct drm_device {int dummy; } ;
struct device_node {int dummy; } ;
struct device {TYPE_1__* driver; struct device_node* of_node; } ;
struct armada_variant {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_match_table; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int FUNC0 (struct drm_device*,struct device*,struct resource*,int,struct armada_variant const*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,struct device_node*) ; 
 struct device_node* FUNC2 (struct device_node*,char*) ; 
 struct of_device_id* FUNC3 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 struct platform_device_id* FUNC5 (struct platform_device*) ; 
 int FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC8 (struct device*) ; 

__attribute__((used)) static int
FUNC9(struct device *dev, struct device *master, void *data)
{
	struct platform_device *pdev = FUNC8(dev);
	struct drm_device *drm = data;
	struct resource *res = FUNC7(pdev, IORESOURCE_MEM, 0);
	int irq = FUNC6(pdev, 0);
	const struct armada_variant *variant;
	struct device_node *port = NULL;

	if (irq < 0)
		return irq;

	if (!dev->of_node) {
		const struct platform_device_id *id;

		id = FUNC5(pdev);
		if (!id)
			return -ENXIO;

		variant = (const struct armada_variant *)id->driver_data;
	} else {
		const struct of_device_id *match;
		struct device_node *np, *parent = dev->of_node;

		match = FUNC3(dev->driver->of_match_table, dev);
		if (!match)
			return -ENXIO;

		np = FUNC2(parent, "ports");
		if (np)
			parent = np;
		port = FUNC2(parent, "port");
		FUNC4(np);
		if (!port) {
			FUNC1(dev, "no port node found in %pOF\n", parent);
			return -ENXIO;
		}

		variant = match->data;
	}

	return FUNC0(drm, dev, res, irq, variant, port);
}