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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_7__ {scalar_t__ channel; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_8__ {int dn; scalar_t__ dma_mode; scalar_t__ pio_mode; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 scalar_t__ const XFER_MW_DMA_0 ; 
 scalar_t__ const XFER_PIO_0 ; 
 scalar_t__ XFER_PIO_2 ; 
 scalar_t__ const XFER_UDMA_0 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(ide_hwif_t *hwif, ide_drive_t *drive)
{
	struct pci_dev *dev	= FUNC3(hwif->dev);
	u8 maslave		= hwif->channel ? 0x42 : 0x40;
	int sitre = 0, a_speed	= 7 << (drive->dn * 4);
	int u_speed = 0, u_flag = 1 << drive->dn;
	u16			reg4042, reg44, reg48, reg4a;
	const u8 speed		= drive->dma_mode;

	FUNC0(dev, maslave, &reg4042);
	sitre = (reg4042 & 0x4000) ? 1 : 0;
	FUNC0(dev, 0x44, &reg44);
	FUNC0(dev, 0x48, &reg48);
	FUNC0(dev, 0x4a, &reg4a);

	if (speed >= XFER_UDMA_0) {
		u_speed = (speed - XFER_UDMA_0) << (drive->dn * 4);

		if (!(reg48 & u_flag))
			FUNC1(dev, 0x48, reg48|u_flag);
		if ((reg4a & a_speed) != u_speed) {
			FUNC1(dev, 0x4a, reg4a & ~a_speed);
			FUNC0(dev, 0x4a, &reg4a);
			FUNC1(dev, 0x4a, reg4a|u_speed);
		}
	} else {
		const u8 mwdma_to_pio[] = { 0, 3, 4 };

		if (reg48 & u_flag)
			FUNC1(dev, 0x48, reg48 & ~u_flag);
		if (reg4a & a_speed)
			FUNC1(dev, 0x4a, reg4a & ~a_speed);

		if (speed >= XFER_MW_DMA_0)
			drive->pio_mode =
				mwdma_to_pio[speed - XFER_MW_DMA_0] + XFER_PIO_0;
		else
			drive->pio_mode = XFER_PIO_2; /* for SWDMA2 */

		FUNC2(hwif, drive);
	}
}