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
struct pci_dev {int dummy; } ;
struct ide_timing {int setup; int act8b; int rec8b; int active; int recover; } ;
struct TYPE_5__ {int channel; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_6__ {int dn; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(ide_hwif_t *hwif, ide_drive_t *drive,
				struct ide_timing *t, u8 ultra)
{
	struct pci_dev *dev = FUNC3(hwif->dev);
	int port = hwif->channel ? 0x5c : 0x58;
	int udmat = 0x56 + hwif->channel;
	u8 unit = drive->dn & 1, udma;
	int shift = 4 * unit;

	/* Set up the UDMA */
	FUNC1(dev, udmat, &udma);
	udma &= ~(0x0F << shift);
	udma |= ultra << shift;
	FUNC2(dev, udmat, udma);

	if (t == NULL)
		return;

	t->setup = FUNC0(t->setup, 1, 8) & 7;
	t->act8b = FUNC0(t->act8b, 1, 8) & 7;
	t->rec8b = FUNC0(t->rec8b, 1, 16) & 15;
	t->active = FUNC0(t->active, 1, 8) & 7;
	t->recover = FUNC0(t->recover, 1, 16) & 15;

	FUNC2(dev, port, t->setup);
	FUNC2(dev, port + 1, (t->act8b << 4) | t->rec8b);
	FUNC2(dev, port + unit + 2,
			      (t->active << 4) | t->recover);
}