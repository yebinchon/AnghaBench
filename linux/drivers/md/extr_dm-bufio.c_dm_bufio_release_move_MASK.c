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
struct dm_bufio_client {int /*<<< orphan*/  block_size; } ;
struct dm_buffer {int hold_count; int /*<<< orphan*/  list_mode; int /*<<< orphan*/  state; int /*<<< orphan*/  block; int /*<<< orphan*/  dirty_end; scalar_t__ dirty_start; struct dm_bufio_client* c; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_DIRTY ; 
 int /*<<< orphan*/  B_READING ; 
 int /*<<< orphan*/  B_WRITING ; 
 int /*<<< orphan*/  LIST_DIRTY ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 struct dm_buffer* FUNC1 (struct dm_bufio_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_bufio_client*) ; 
 int /*<<< orphan*/  FUNC7 (struct dm_buffer*,int /*<<< orphan*/ *) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct dm_bufio_client*) ; 
 int /*<<< orphan*/  FUNC10 (struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC11 (struct dm_bufio_client*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct dm_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_endio ; 

void FUNC17(struct dm_buffer *b, sector_t new_block)
{
	struct dm_bufio_client *c = b->c;
	struct dm_buffer *new;

	FUNC0(FUNC8());

	FUNC9(c);

retry:
	new = FUNC1(c, new_block);
	if (new) {
		if (new->hold_count) {
			FUNC6(c);
			goto retry;
		}

		/*
		 * FIXME: Is there any point waiting for a write that's going
		 * to be overwritten in a bit?
		 */
		FUNC4(new);
		FUNC5(new);
		FUNC2(new);
	}

	FUNC0(!b->hold_count);
	FUNC0(FUNC14(B_READING, &b->state));

	FUNC7(b, NULL);
	if (b->hold_count == 1) {
		FUNC15(&b->state, B_WRITING,
			       TASK_UNINTERRUPTIBLE);
		FUNC12(B_DIRTY, &b->state);
		b->dirty_start = 0;
		b->dirty_end = c->block_size;
		FUNC5(b);
		FUNC3(b, new_block, LIST_DIRTY);
	} else {
		sector_t old_block;
		FUNC16(&b->state, B_WRITING,
				    TASK_UNINTERRUPTIBLE);
		/*
		 * Relink buffer to "new_block" so that write_callback
		 * sees "new_block" as a block number.
		 * After the write, link the buffer back to old_block.
		 * All this must be done in bufio lock, so that block number
		 * change isn't visible to other threads.
		 */
		old_block = b->block;
		FUNC5(b);
		FUNC3(b, new_block, b->list_mode);
		FUNC13(b, REQ_OP_WRITE, write_endio);
		FUNC15(&b->state, B_WRITING,
			       TASK_UNINTERRUPTIBLE);
		FUNC5(b);
		FUNC3(b, old_block, b->list_mode);
	}

	FUNC11(c);
	FUNC10(b);
}