#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct pblk_line {int /*<<< orphan*/  lock; int /*<<< orphan*/  map_bitmap; scalar_t__ cur_sec; } ;
struct TYPE_2__ {int /*<<< orphan*/  sec_per_line; } ;
struct pblk {TYPE_1__ lm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC5(struct pblk *pblk, struct pblk_line *line, int nr_secs)
{
	u64 addr;
	int i;

	FUNC2(&line->lock);
	addr = FUNC1(line->map_bitmap,
					pblk->lm.sec_per_line, line->cur_sec);
	line->cur_sec = addr - nr_secs;

	for (i = 0; i < nr_secs; i++, line->cur_sec--)
		FUNC0(!FUNC4(line->cur_sec, line->map_bitmap));
	FUNC3(&line->lock);
}