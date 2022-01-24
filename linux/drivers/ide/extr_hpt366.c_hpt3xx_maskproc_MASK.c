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
struct hpt_info {scalar_t__ chip_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {int dev_flags; TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 scalar_t__ HPT370 ; 
 int IDE_DFLAG_NIEN_QUIRK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hpt_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(ide_drive_t *drive, int mask)
{
	ide_hwif_t *hwif	= drive->hwif;
	struct pci_dev	*dev	= FUNC5(hwif->dev);
	struct hpt_info *info	= FUNC2(hwif->dev);

	if ((drive->dev_flags & IDE_DFLAG_NIEN_QUIRK) == 0)
		return;

	if (info->chip_type >= HPT370) {
		u8 scr1 = 0;

		FUNC3(dev, 0x5a, &scr1);
		if (((scr1 & 0x10) >> 4) != mask) {
			if (mask)
				scr1 |=  0x10;
			else
				scr1 &= ~0x10;
			FUNC4(dev, 0x5a, scr1);
		}
	} else if (mask)
		FUNC0(hwif->irq);
	else
		FUNC1(hwif->irq);
}