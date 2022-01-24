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
typedef  int u8 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct ide_port_info {int udma_mask; int /*<<< orphan*/ * port_ops; } ;

/* Variables and functions */
 size_t ATA_133 ; 
 int ENOTSUPP ; 
 size_t chipset_family ; 
 int FUNC0 (struct pci_dev*,struct ide_port_info*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct pci_dev*) ; 
 struct ide_port_info sis5513_chipset ; 
 int /*<<< orphan*/  sis_ata133_port_ops ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  sis_port_ops ; 

__attribute__((used)) static int FUNC3(struct pci_dev *dev, const struct pci_device_id *id)
{
	struct ide_port_info d = sis5513_chipset;
	u8 udma_rates[] = { 0x00, 0x00, 0x07, 0x1f, 0x3f, 0x3f, 0x7f, 0x7f };
	int rc;

	rc = FUNC1(dev);
	if (rc)
		return rc;

	if (FUNC2(dev) == 0)
		return -ENOTSUPP;

	if (chipset_family >= ATA_133)
		d.port_ops = &sis_ata133_port_ops;
	else
		d.port_ops = &sis_port_ops;

	d.udma_mask = udma_rates[chipset_family];

	return FUNC0(dev, &d, NULL);
}