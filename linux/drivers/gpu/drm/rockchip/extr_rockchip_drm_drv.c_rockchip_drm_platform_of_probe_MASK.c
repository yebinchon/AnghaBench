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
struct device_node {struct device_node* parent; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int ENODEV ; 
 int is_support_iommu ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (struct device_node*,char*,int) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct device_node *np = dev->of_node;
	struct device_node *port;
	bool found = false;
	int i;

	if (!np)
		return -ENODEV;

	for (i = 0;; i++) {
		struct device_node *iommu;

		port = FUNC4(np, "ports", i);
		if (!port)
			break;

		if (!FUNC2(port->parent)) {
			FUNC3(port);
			continue;
		}

		iommu = FUNC4(port->parent, "iommus", 0);
		if (!iommu || !FUNC2(iommu->parent)) {
			FUNC0(dev,
				      "no iommu attached for %pOF, using non-iommu buffers\n",
				      port->parent);
			/*
			 * if there is a crtc not support iommu, force set all
			 * crtc use non-iommu buffer.
			 */
			is_support_iommu = false;
		}

		found = true;

		FUNC3(iommu);
		FUNC3(port);
	}

	if (i == 0) {
		FUNC1(dev, "missing 'ports' property\n");
		return -ENODEV;
	}

	if (!found) {
		FUNC1(dev,
			      "No available vop found for display-subsystem.\n");
		return -ENODEV;
	}

	return 0;
}