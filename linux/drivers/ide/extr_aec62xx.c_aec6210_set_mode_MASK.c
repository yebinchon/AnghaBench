#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct ide_host {struct chipset_bus_clock_list_entry* host_priv; } ;
struct chipset_bus_clock_list_entry {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_6__ {int dma_mode; int dn; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (int const,struct chipset_bus_clock_list_entry*) ; 
 int FUNC3 (int const,struct chipset_bus_clock_list_entry*) ; 
 struct ide_host* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(ide_hwif_t *hwif, ide_drive_t *drive)
{
	struct pci_dev *dev	= FUNC9(hwif->dev);
	struct ide_host *host	= FUNC4(dev);
	struct chipset_bus_clock_list_entry *bus_clock = host->host_priv;
	u16 d_conf		= 0;
	u8 ultra = 0, ultra_conf = 0;
	u8 tmp0 = 0, tmp1 = 0, tmp2 = 0;
	const u8 speed = drive->dma_mode;
	unsigned long flags;

	FUNC1(flags);
	/* 0x40|(2*drive->dn): Active, 0x41|(2*drive->dn): Recovery */
	FUNC6(dev, 0x40|(2*drive->dn), &d_conf);
	tmp0 = FUNC2(speed, bus_clock);
	d_conf = ((tmp0 & 0xf0) << 4) | (tmp0 & 0xf);
	FUNC8(dev, 0x40|(2*drive->dn), d_conf);

	tmp1 = 0x00;
	tmp2 = 0x00;
	FUNC5(dev, 0x54, &ultra);
	tmp1 = ((0x00 << (2*drive->dn)) | (ultra & ~(3 << (2*drive->dn))));
	ultra_conf = FUNC3(speed, bus_clock);
	tmp2 = ((ultra_conf << (2*drive->dn)) | (tmp1 & ~(3 << (2*drive->dn))));
	FUNC7(dev, 0x54, tmp2);
	FUNC0(flags);
}