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
typedef  int /*<<< orphan*/  u64 ;
struct pblk_line {scalar_t__ left_msecs; int /*<<< orphan*/  lock; } ;
struct pblk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pblk*,struct pblk_line*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

u64 FUNC4(struct pblk *pblk, struct pblk_line *line, int nr_secs)
{
	u64 addr;

	/* Lock needed in case a write fails and a recovery needs to remap
	 * failed write buffer entries
	 */
	FUNC2(&line->lock);
	addr = FUNC1(pblk, line, nr_secs);
	line->left_msecs -= nr_secs;
	FUNC0(line->left_msecs < 0, "pblk: page allocation out of bounds\n");
	FUNC3(&line->lock);

	return addr;
}