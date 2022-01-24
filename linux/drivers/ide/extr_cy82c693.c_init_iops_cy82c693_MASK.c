#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  devfn; } ;
struct TYPE_3__ {int channel; struct TYPE_3__* mate; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ide_hwif_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(ide_hwif_t *hwif)
{
	static ide_hwif_t *primary;
	struct pci_dev *dev = FUNC1(hwif->dev);

	if (FUNC0(dev->devfn) == 1)
		primary = hwif;
	else {
		hwif->mate = primary;
		hwif->channel = 1;
	}
}