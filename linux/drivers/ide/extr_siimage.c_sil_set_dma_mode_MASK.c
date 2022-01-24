#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_7__ {int host_flags; scalar_t__ channel; scalar_t__ hwif_data; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_8__ {int dn; int dma_mode; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int IDE_HFLAG_MMIO ; 
 int const XFER_MW_DMA_0 ; 
 int const XFER_UDMA_0 ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 unsigned long FUNC1 (TYPE_2__*,int) ; 
 int FUNC2 (struct pci_dev*,unsigned long) ; 
 int FUNC3 (struct pci_dev*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,unsigned long) ; 
 struct pci_dev* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(ide_hwif_t *hwif, ide_drive_t *drive)
{
	static const u8 ultra6[] = { 0x0F, 0x0B, 0x07, 0x05, 0x03, 0x02, 0x01 };
	static const u8 ultra5[] = { 0x0C, 0x07, 0x05, 0x04, 0x02, 0x01 };
	static const u16 dma[]	 = { 0x2208, 0x10C2, 0x10C1 };

	struct pci_dev *dev	= FUNC6(hwif->dev);
	unsigned long base	= (unsigned long)hwif->hwif_data;
	u16 ultra = 0, multi	= 0;
	u8 mode = 0, unit	= drive->dn & 1;
	u8 mmio			= (hwif->host_flags & IDE_HFLAG_MMIO) ? 1 : 0;
	u8 scsc = 0, addr_mask	= hwif->channel ? (mmio ? 0xF4 : 0x84)
						: (mmio ? 0xB4 : 0x80);
	unsigned long ma	= FUNC1(drive, 0x08);
	unsigned long ua	= FUNC1(drive, 0x0C);
	const u8 speed		= drive->dma_mode;

	scsc  = FUNC3 (dev, base + (mmio ? 0x4A : 0x8A));
	mode  = FUNC3 (dev, base + addr_mask);
	multi = FUNC2(dev, ma);
	ultra = FUNC2(dev, ua);

	mode  &= ~(unit ? 0x30 : 0x03);
	ultra &= ~0x3F;
	scsc = ((scsc & 0x30) == 0x00) ? 0 : 1;

	scsc = FUNC0(hwif) ? 1 : scsc;

	if (speed >= XFER_UDMA_0) {
		multi  = dma[2];
		ultra |= scsc ? ultra6[speed - XFER_UDMA_0] :
				ultra5[speed - XFER_UDMA_0];
		mode  |= unit ? 0x30 : 0x03;
	} else {
		multi = dma[speed - XFER_MW_DMA_0];
		mode |= unit ? 0x20 : 0x02;
	}

	FUNC5 (dev, mode, base + addr_mask);
	FUNC4(dev, multi, ma);
	FUNC4(dev, ultra, ua);
}