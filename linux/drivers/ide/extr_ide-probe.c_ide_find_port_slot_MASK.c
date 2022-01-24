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
struct ide_port_info {int host_flags; } ;

/* Variables and functions */
 int ENOENT ; 
 int IDE_HFLAG_NON_BOOTABLE ; 
 int IDE_HFLAG_QD_2ND_PORT ; 
 int MAX_HWIFS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  ide_cfg_mtx ; 
 int ide_indexes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(const struct ide_port_info *d)
{
	int idx = -ENOENT;
	u8 bootable = (d && (d->host_flags & IDE_HFLAG_NON_BOOTABLE)) ? 0 : 1;
	u8 i = (d && (d->host_flags & IDE_HFLAG_QD_2ND_PORT)) ? 1 : 0;

	/*
	 * Claim an unassigned slot.
	 *
	 * Give preference to claiming other slots before claiming ide0/ide1,
	 * just in case there's another interface yet-to-be-scanned
	 * which uses ports 0x1f0/0x170 (the ide0/ide1 defaults).
	 *
	 * Unless there is a bootable card that does not use the standard
	 * ports 0x1f0/0x170 (the ide0/ide1 defaults).
	 */
	FUNC1(&ide_cfg_mtx);
	if (bootable) {
		if ((ide_indexes | i) != (1 << MAX_HWIFS) - 1)
			idx = FUNC0(ide_indexes | i);
	} else {
		if ((ide_indexes | 3) != (1 << MAX_HWIFS) - 1)
			idx = FUNC0(ide_indexes | 3);
		else if ((ide_indexes & 3) != 3)
			idx = FUNC0(ide_indexes);
	}
	if (idx >= 0)
		ide_indexes |= (1 << idx);
	FUNC2(&ide_cfg_mtx);

	return idx;
}