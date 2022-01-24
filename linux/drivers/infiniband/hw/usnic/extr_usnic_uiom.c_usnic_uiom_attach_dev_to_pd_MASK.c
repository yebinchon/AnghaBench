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
struct usnic_uiom_pd {int /*<<< orphan*/  domain; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev_cnt; int /*<<< orphan*/  devs; } ;
struct usnic_uiom_dev {int /*<<< orphan*/  link; struct device* dev; } ;
struct device {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IOMMU_CAP_CACHE_COHERENCY ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usnic_uiom_dev*) ; 
 struct usnic_uiom_dev* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

int FUNC10(struct usnic_uiom_pd *pd, struct device *dev)
{
	struct usnic_uiom_dev *uiom_dev;
	int err;

	uiom_dev = FUNC5(sizeof(*uiom_dev), GFP_ATOMIC);
	if (!uiom_dev)
		return -ENOMEM;
	uiom_dev->dev = dev;

	err = FUNC1(pd->domain, dev);
	if (err)
		goto out_free_dev;

	if (!FUNC2(dev->bus, IOMMU_CAP_CACHE_COHERENCY)) {
		FUNC9("IOMMU of %s does not support cache coherency\n",
				FUNC0(dev));
		err = -EINVAL;
		goto out_detach_device;
	}

	FUNC7(&pd->lock);
	FUNC6(&uiom_dev->link, &pd->devs);
	pd->dev_cnt++;
	FUNC8(&pd->lock);

	return 0;

out_detach_device:
	FUNC3(pd->domain, dev);
out_free_dev:
	FUNC4(uiom_dev);
	return err;
}