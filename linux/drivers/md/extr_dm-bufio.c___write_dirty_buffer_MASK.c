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
struct list_head {int dummy; } ;
struct dm_buffer {int /*<<< orphan*/  write_list; int /*<<< orphan*/  dirty_end; int /*<<< orphan*/  write_end; int /*<<< orphan*/  dirty_start; int /*<<< orphan*/  write_start; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_DIRTY ; 
 int /*<<< orphan*/  B_WRITING ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_endio ; 

__attribute__((used)) static void FUNC5(struct dm_buffer *b,
				 struct list_head *write_list)
{
	if (!FUNC3(B_DIRTY, &b->state))
		return;

	FUNC0(B_DIRTY, &b->state);
	FUNC4(&b->state, B_WRITING, TASK_UNINTERRUPTIBLE);

	b->write_start = b->dirty_start;
	b->write_end = b->dirty_end;

	if (!write_list)
		FUNC2(b, REQ_OP_WRITE, write_endio);
	else
		FUNC1(&b->write_list, write_list);
}