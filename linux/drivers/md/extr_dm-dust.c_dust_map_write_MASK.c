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
struct dust_device {int sect_per_block_shift; int /*<<< orphan*/  dust_lock; } ;
typedef  int sector_t ;

/* Variables and functions */
 int DM_MAPIO_REMAPPED ; 
 int /*<<< orphan*/  FUNC0 (struct dust_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct dust_device *dd, sector_t thisblock,
			  bool fail_read_on_bb)
{
	unsigned long flags;

	if (fail_read_on_bb) {
		thisblock >>= dd->sect_per_block_shift;
		FUNC1(&dd->dust_lock, flags);
		FUNC0(dd, thisblock);
		FUNC2(&dd->dust_lock, flags);
	}

	return DM_MAPIO_REMAPPED;
}