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
struct dm_integrity_c {char mode; int synchronous_mode; int /*<<< orphan*/  commit_wq; int /*<<< orphan*/  bitmap_flush_work; scalar_t__ bitmap_flush_interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dm_integrity_c *ic)
{
	FUNC0("dm_integrity_enter_synchronous_mode\n");

	if (ic->mode == 'B') {
		ic->bitmap_flush_interval = FUNC3(10) + 1;
		ic->synchronous_mode = 1;

		FUNC1(&ic->bitmap_flush_work);
		FUNC4(ic->commit_wq, &ic->bitmap_flush_work, 0);
		FUNC2(ic->commit_wq);
	}
}