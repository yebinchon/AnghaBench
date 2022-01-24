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
struct dm_bufio_client {int dummy; } ;
struct dm_buffer {int hold_count; void* data; scalar_t__ read_error; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  enum new_flag { ____Placeholder_new_flag } new_flag ;

/* Variables and functions */
 int /*<<< orphan*/  B_READING ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 struct dm_buffer* FUNC2 (struct dm_bufio_client*,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_bufio_client*) ; 
 int /*<<< orphan*/  FUNC7 (struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct dm_bufio_client*) ; 
 int /*<<< orphan*/  read_endio ; 
 int /*<<< orphan*/  FUNC9 (struct dm_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_list ; 

__attribute__((used)) static void *FUNC11(struct dm_bufio_client *c, sector_t block,
		      enum new_flag nf, struct dm_buffer **bp)
{
	int need_submit;
	struct dm_buffer *b;

	FUNC1(write_list);

	FUNC6(c);
	b = FUNC2(c, block, nf, &need_submit, &write_list);
#ifdef CONFIG_DM_DEBUG_BLOCK_STACK_TRACING
	if (b && b->hold_count == 1)
		buffer_record_stack(b);
#endif
	FUNC8(c);

	FUNC3(&write_list);

	if (!b)
		return NULL;

	if (need_submit)
		FUNC9(b, REQ_OP_READ, read_endio);

	FUNC10(&b->state, B_READING, TASK_UNINTERRUPTIBLE);

	if (b->read_error) {
		int error = FUNC4(b->read_error);

		FUNC7(b);

		return FUNC0(error);
	}

	*bp = b;

	return b->data;
}