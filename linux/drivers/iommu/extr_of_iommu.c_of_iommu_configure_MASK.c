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
struct of_phandle_args {int /*<<< orphan*/  np; } ;
struct of_pci_iommu_alias_info {struct device_node* np; struct device* dev; } ;
typedef  struct iommu_ops const iommu_ops ;
struct iommu_fwspec {struct iommu_ops const* ops; } ;
struct device_node {int dummy; } ;
struct device {scalar_t__ bus; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 struct iommu_ops const* FUNC0 (int) ; 
 int NO_IOMMU ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct iommu_fwspec* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int FUNC7 (struct device*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct device_node*) ; 
 int FUNC9 (struct device*,struct of_phandle_args*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*,char*,char*,int,struct of_phandle_args*) ; 
 int /*<<< orphan*/  of_pci_iommu_init ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct of_pci_iommu_alias_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 

const struct iommu_ops *FUNC15(struct device *dev,
					   struct device_node *master_np)
{
	const struct iommu_ops *ops = NULL;
	struct iommu_fwspec *fwspec = FUNC2(dev);
	int err = NO_IOMMU;

	if (!master_np)
		return NULL;

	if (fwspec) {
		if (fwspec->ops)
			return fwspec->ops;

		/* In the deferred case, start again from scratch */
		FUNC6(dev);
	}

	/*
	 * We don't currently walk up the tree looking for a parent IOMMU.
	 * See the `Notes:' section of
	 * Documentation/devicetree/bindings/iommu/iommu.txt
	 */
	if (FUNC4(dev)) {
		struct of_pci_iommu_alias_info info = {
			.dev = dev,
			.np = master_np,
		};

		err = FUNC12(FUNC14(dev),
					     of_pci_iommu_init, &info);
	} else if (FUNC3(dev)) {
		err = FUNC8(FUNC13(dev), master_np);
	} else {
		struct of_phandle_args iommu_spec;
		int idx = 0;

		while (!FUNC11(master_np, "iommus",
						   "#iommu-cells",
						   idx, &iommu_spec)) {
			err = FUNC9(dev, &iommu_spec);
			FUNC10(iommu_spec.np);
			idx++;
			if (err)
				break;
		}
	}


	/*
	 * Two success conditions can be represented by non-negative err here:
	 * >0 : there is no IOMMU, or one was unavailable for non-fatal reasons
	 *  0 : we found an IOMMU, and dev->fwspec is initialised appropriately
	 * <0 : any actual error
	 */
	if (!err) {
		/* The fwspec pointer changed, read it again */
		fwspec = FUNC2(dev);
		ops    = fwspec->ops;
	}
	/*
	 * If we have reason to believe the IOMMU driver missed the initial
	 * probe for dev, replay it to get things in order.
	 */
	if (!err && dev->bus && !FUNC5(dev))
		err = FUNC7(dev);

	/* Ignore all other errors apart from EPROBE_DEFER */
	if (err == -EPROBE_DEFER) {
		ops = FUNC0(err);
	} else if (err < 0) {
		FUNC1(dev, "Adding to IOMMU failed: %d\n", err);
		ops = NULL;
	}

	return ops;
}