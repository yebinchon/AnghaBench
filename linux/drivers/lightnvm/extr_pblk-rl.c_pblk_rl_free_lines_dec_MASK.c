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
struct pblk_rl {int /*<<< orphan*/  free_user_blocks; int /*<<< orphan*/  free_blocks; } ;
struct pblk_line {int /*<<< orphan*/  blk_in_line; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pblk_rl*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ *) ; 

void FUNC4(struct pblk_rl *rl, struct pblk_line *line,
			    bool used)
{
	int blk_in_line = FUNC1(&line->blk_in_line);
	int free_blocks;

	FUNC2(blk_in_line, &rl->free_blocks);

	if (used)
		free_blocks = FUNC3(blk_in_line,
							&rl->free_user_blocks);
	else
		free_blocks = FUNC1(&rl->free_user_blocks);

	FUNC0(rl, free_blocks);
}