#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct via82cxxx_dev {TYPE_1__* via_config; } ;
struct pci_dev {int dummy; } ;
struct ide_timing {int dummy; } ;
struct ide_host {struct via82cxxx_dev* host_priv; } ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_2__ ide_hwif_t ;
struct TYPE_12__ {int /*<<< orphan*/  dn; int /*<<< orphan*/  const pio_mode; int /*<<< orphan*/  dma_mode; } ;
typedef  TYPE_3__ ide_drive_t ;
struct TYPE_10__ {int udma_mask; } ;

/* Variables and functions */
#define  ATA_UDMA2 131 
#define  ATA_UDMA4 130 
#define  ATA_UDMA5 129 
#define  ATA_UDMA6 128 
 int /*<<< orphan*/  IDE_TIMING_8BIT ; 
 TYPE_3__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/  const,struct ide_timing*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ide_timing*,struct ide_timing*,struct ide_timing*,int /*<<< orphan*/ ) ; 
 struct ide_host* FUNC3 (struct pci_dev*) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 int via_clock ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,struct ide_timing*) ; 

__attribute__((used)) static void FUNC6(ide_hwif_t *hwif, ide_drive_t *drive)
{
	ide_drive_t *peer = FUNC0(drive);
	struct pci_dev *dev = FUNC4(hwif->dev);
	struct ide_host *host = FUNC3(dev);
	struct via82cxxx_dev *vdev = host->host_priv;
	struct ide_timing t, p;
	unsigned int T, UT;
	const u8 speed = drive->dma_mode;

	T = 1000000000 / via_clock;

	switch (vdev->via_config->udma_mask) {
	case ATA_UDMA2: UT = T;   break;
	case ATA_UDMA4: UT = T/2; break;
	case ATA_UDMA5: UT = T/3; break;
	case ATA_UDMA6: UT = T/4; break;
	default:	UT = T;
	}

	FUNC1(drive, speed, &t, T, UT);

	if (peer) {
		FUNC1(peer, peer->pio_mode, &p, T, UT);
		FUNC2(&p, &t, &t, IDE_TIMING_8BIT);
	}

	FUNC5(hwif, drive->dn, &t);
}