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
struct pblk_line_meta {int min_blk_line; int /*<<< orphan*/  meta_distance; int /*<<< orphan*/  blk_per_line; } ;
struct pblk_line {scalar_t__ state; int /*<<< orphan*/  sec_to_update; int /*<<< orphan*/  ref; int /*<<< orphan*/  lock; int /*<<< orphan*/  meta_distance; int /*<<< orphan*/  left_seblks; int /*<<< orphan*/  left_eblks; int /*<<< orphan*/  id; int /*<<< orphan*/  blk_bitmap; int /*<<< orphan*/  erase_bitmap; int /*<<< orphan*/  blk_in_line; } ;
struct pblk {struct pblk_line_meta lm; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINTR ; 
 scalar_t__ PBLK_LINESTATE_FREE ; 
 scalar_t__ PBLK_LINESTATE_NEW ; 
 scalar_t__ PBLK_LINESTATE_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pblk*) ; 
 int FUNC6 (struct pblk*,struct pblk_line*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct pblk *pblk, struct pblk_line *line)
{
	struct pblk_line_meta *lm = &pblk->lm;
	int blk_in_line = FUNC1(&line->blk_in_line);
	int blk_to_erase;

	/* Bad blocks do not need to be erased */
	FUNC3(line->erase_bitmap, line->blk_bitmap, lm->blk_per_line);

	FUNC7(&line->lock);

	/* If we have not written to this line, we need to mark up free chunks
	 * as already erased
	 */
	if (line->state == PBLK_LINESTATE_NEW) {
		blk_to_erase = FUNC6(pblk, line);
		line->state = PBLK_LINESTATE_FREE;
		FUNC9(FUNC5(pblk), line->id,
					line->state);
	} else {
		blk_to_erase = blk_in_line;
	}

	if (blk_in_line < lm->min_blk_line) {
		FUNC8(&line->lock);
		return -EAGAIN;
	}

	if (line->state != PBLK_LINESTATE_FREE) {
		FUNC0(1, "pblk: corrupted line %d, state %d\n",
							line->id, line->state);
		FUNC8(&line->lock);
		return -EINTR;
	}

	line->state = PBLK_LINESTATE_OPEN;
	FUNC9(FUNC5(pblk), line->id,
				line->state);

	FUNC2(&line->left_eblks, blk_to_erase);
	FUNC2(&line->left_seblks, blk_to_erase);

	line->meta_distance = lm->meta_distance;
	FUNC8(&line->lock);

	FUNC4(&line->ref);
	FUNC2(&line->sec_to_update, 0);

	return 0;
}