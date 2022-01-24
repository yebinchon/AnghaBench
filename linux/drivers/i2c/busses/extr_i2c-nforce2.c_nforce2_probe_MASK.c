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
struct pci_dev {int device; int /*<<< orphan*/  dev; } ;
struct nforce2_smbus {int blockops; int can_abort; int /*<<< orphan*/  adapter; scalar_t__ base; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NFORCE_PCI_SMB1 ; 
 int /*<<< orphan*/  NFORCE_PCI_SMB2 ; 
#define  PCI_DEVICE_ID_NVIDIA_NFORCE2_SMBUS 130 
#define  PCI_DEVICE_ID_NVIDIA_NFORCE_MCP51_SMBUS 129 
#define  PCI_DEVICE_ID_NVIDIA_NFORCE_MCP55_SMBUS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct nforce2_smbus* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nforce2_smbus*) ; 
 int /*<<< orphan*/  nforce2_dmi_blacklist2 ; 
 int FUNC4 (struct pci_dev*,int,int /*<<< orphan*/ ,struct nforce2_smbus*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,struct nforce2_smbus*) ; 

__attribute__((used)) static int FUNC7(struct pci_dev *dev, const struct pci_device_id *id)
{
	struct nforce2_smbus *smbuses;
	int res1, res2;

	/* we support 2 SMBus adapters */
	smbuses = FUNC2(2, sizeof(struct nforce2_smbus), GFP_KERNEL);
	if (!smbuses)
		return -ENOMEM;
	FUNC6(dev, smbuses);

	switch (dev->device) {
	case PCI_DEVICE_ID_NVIDIA_NFORCE2_SMBUS:
	case PCI_DEVICE_ID_NVIDIA_NFORCE_MCP51_SMBUS:
	case PCI_DEVICE_ID_NVIDIA_NFORCE_MCP55_SMBUS:
		smbuses[0].blockops = 1;
		smbuses[1].blockops = 1;
		smbuses[0].can_abort = 1;
		smbuses[1].can_abort = 1;
	}

	/* SMBus adapter 1 */
	res1 = FUNC4(dev, 4, NFORCE_PCI_SMB1, &smbuses[0], "SMB1");
	if (res1 < 0)
		smbuses[0].base = 0;	/* to have a check value */

	/* SMBus adapter 2 */
	if (FUNC1(nforce2_dmi_blacklist2)) {
		FUNC0(&dev->dev, "Disabling SMB2 for safety reasons.\n");
		res2 = -EPERM;
		smbuses[1].base = 0;
	} else {
		res2 = FUNC4(dev, 5, NFORCE_PCI_SMB2, &smbuses[1],
					 "SMB2");
		if (res2 < 0)
			smbuses[1].base = 0;	/* to have a check value */
	}

	if ((res1 < 0) && (res2 < 0)) {
		/* we did not find even one of the SMBuses, so we give up */
		FUNC3(smbuses);
		return -ENODEV;
	}

	FUNC5(&smbuses[0].adapter);
	return 0;
}