#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {TYPE_2__* driver; int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct bnxt_en_dev {int flags; struct pci_dev* pdev; } ;
struct bnxt {struct bnxt_en_dev* (* ulp_probe ) (struct net_device*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;

/* Variables and functions */
 int BNXT_EN_FLAG_ROCE_CAP ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 struct bnxt_en_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bnxt_en_dev*) ; 
 int /*<<< orphan*/  ROCE_DRV_MODULE_NAME ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct bnxt* FUNC4 (struct net_device*) ; 
 struct bnxt_en_dev* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct bnxt_en_dev *FUNC7(struct net_device *netdev)
{
	struct bnxt *bp = FUNC4(netdev);
	struct bnxt_en_dev *en_dev;
	struct pci_dev *pdev;

	/* Call bnxt_en's RoCE probe via indirect API */
	if (!bp->ulp_probe)
		return FUNC0(-EINVAL);

	en_dev = bp->ulp_probe(netdev);
	if (FUNC1(en_dev))
		return en_dev;

	pdev = en_dev->pdev;
	if (!pdev)
		return FUNC0(-EINVAL);

	if (!(en_dev->flags & BNXT_EN_FLAG_ROCE_CAP)) {
		FUNC3(&pdev->dev,
			"%s: probe error: RoCE is not supported on this device",
			ROCE_DRV_MODULE_NAME);
		return FUNC0(-ENODEV);
	}

	/* Bump net device reference count */
	if (!FUNC6(pdev->driver->driver.owner))
		return FUNC0(-ENODEV);

	FUNC2(netdev);

	return en_dev;
}