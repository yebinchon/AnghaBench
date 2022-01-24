#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_5__ {int dn; TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int const XFER_UDMA_0 ; 
 int chipset_family ; 
 int* cycle_time_offset ; 
 int* cycle_time_range ; 
 int** cycle_time_value ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(ide_drive_t *drive, const u8 mode)
{
	struct pci_dev *dev = FUNC2(drive->hwif->dev);
	u8 drive_pci = 0x40 + drive->dn * 2, reg = 0, i = chipset_family;

	FUNC0(dev, drive_pci + 1, &reg);

	/* force the UDMA bit on if we want to use UDMA */
	reg |= 0x80;
	/* clean reg cycle time bits */
	reg &= ~((0xff >> (8 - cycle_time_range[i])) << cycle_time_offset[i]);
	/* set reg cycle time bits */
	reg |= cycle_time_value[i][mode - XFER_UDMA_0] << cycle_time_offset[i];

	FUNC1(dev, drive_pci + 1, reg);
}