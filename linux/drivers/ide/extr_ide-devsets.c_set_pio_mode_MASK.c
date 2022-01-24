#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct ide_port_ops {int /*<<< orphan*/  (* set_pio_mode ) (TYPE_1__*,TYPE_2__*) ;} ;
struct TYPE_11__ {int host_flags; int /*<<< orphan*/  lock; struct ide_port_ops* port_ops; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_12__ {int dev_flags; scalar_t__ pio_mode; TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSYS ; 
 int IDE_DFLAG_USING_DMA ; 
 int IDE_HFLAG_NO_SET_MODE ; 
 int IDE_HFLAG_SET_PIO_MODE_KEEP_DMA ; 
 scalar_t__ XFER_PIO_0 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(ide_drive_t *drive, int arg)
{
	ide_hwif_t *hwif = drive->hwif;
	const struct ide_port_ops *port_ops = hwif->port_ops;

	if (arg < 0 || arg > 255)
		return -EINVAL;

	if (port_ops == NULL || port_ops->set_pio_mode == NULL ||
	    (hwif->host_flags & IDE_HFLAG_NO_SET_MODE))
		return -ENOSYS;

	if (FUNC2(drive->hwif, arg)) {
		drive->pio_mode = arg + XFER_PIO_0;

		if (arg == 8 || arg == 9) {
			unsigned long flags;

			/* take lock for IDE_DFLAG_[NO_]UNMASK/[NO_]IO_32BIT */
			FUNC3(&hwif->lock, flags);
			port_ops->set_pio_mode(hwif, drive);
			FUNC4(&hwif->lock, flags);
		} else
			port_ops->set_pio_mode(hwif, drive);
	} else {
		int keep_dma = !!(drive->dev_flags & IDE_DFLAG_USING_DMA);

		FUNC1(drive, arg);

		if (hwif->host_flags & IDE_HFLAG_SET_PIO_MODE_KEEP_DMA) {
			if (keep_dma)
				FUNC0(drive);
		}
	}

	return 0;
}