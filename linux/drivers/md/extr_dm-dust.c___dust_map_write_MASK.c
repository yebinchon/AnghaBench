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
struct dust_device {int /*<<< orphan*/  sect_per_block; int /*<<< orphan*/  quiet_mode; int /*<<< orphan*/  badblock_count; int /*<<< orphan*/  badblocklist; } ;
struct badblock {int /*<<< orphan*/  node; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long) ; 
 struct badblock* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct badblock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dust_device *dd, sector_t thisblock)
{
	struct badblock *bblk = FUNC1(&dd->badblocklist, thisblock);

	if (bblk) {
		FUNC3(&bblk->node, &dd->badblocklist);
		dd->badblock_count--;
		FUNC2(bblk);
		if (!dd->quiet_mode) {
			FUNC4(thisblock, dd->sect_per_block);
			FUNC0("block %llu removed from badblocklist by write",
			       (unsigned long long)thisblock);
		}
	}
}