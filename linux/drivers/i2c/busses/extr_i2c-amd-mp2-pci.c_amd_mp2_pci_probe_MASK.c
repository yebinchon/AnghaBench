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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct amd_mp2_dev {int probed; struct pci_dev* pci_dev; int /*<<< orphan*/  c2p_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct amd_mp2_dev*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct amd_mp2_dev* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct pci_dev *pci_dev,
			     const struct pci_device_id *id)
{
	struct amd_mp2_dev *privdata;
	int rc;

	privdata = FUNC2(&pci_dev->dev, sizeof(*privdata), GFP_KERNEL);
	if (!privdata)
		return -ENOMEM;

	rc = FUNC0(privdata, pci_dev);
	if (rc)
		return rc;

	FUNC3(&privdata->c2p_lock);
	privdata->pci_dev = pci_dev;

	FUNC6(&pci_dev->dev, 1000);
	FUNC7(&pci_dev->dev);
	FUNC5(&pci_dev->dev);
	FUNC4(&pci_dev->dev);

	privdata->probed = true;

	FUNC1(&pci_dev->dev, "MP2 device registered.\n");
	return 0;
}