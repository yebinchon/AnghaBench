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
struct dm_bufio_client {int dummy; } ;
struct dm_buffer {int hold_count; int state; scalar_t__ write_error; scalar_t__ read_error; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  enum new_flag { ____Placeholder_new_flag } new_flag ;

/* Variables and functions */
 int B_DIRTY ; 
 int B_READING ; 
 int B_WRITING ; 
 int /*<<< orphan*/  LIST_CLEAN ; 
 int NF_FRESH ; 
 int NF_GET ; 
 int NF_PREFETCH ; 
 struct dm_buffer* FUNC0 (struct dm_bufio_client*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_bufio_client*,struct list_head*) ; 
 struct dm_buffer* FUNC2 (struct dm_bufio_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_buffer*,int) ; 
 scalar_t__ FUNC6 (int,int*) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

__attribute__((used)) static struct dm_buffer *FUNC8(struct dm_bufio_client *c, sector_t block,
				     enum new_flag nf, int *need_submit,
				     struct list_head *write_list)
{
	struct dm_buffer *b, *new_b = NULL;

	*need_submit = 0;

	b = FUNC2(c, block);
	if (b)
		goto found_buffer;

	if (nf == NF_GET)
		return NULL;

	new_b = FUNC0(c, nf);
	if (!new_b)
		return NULL;

	/*
	 * We've had a period where the mutex was unlocked, so need to
	 * recheck the buffer tree.
	 */
	b = FUNC2(c, block);
	if (b) {
		FUNC3(new_b);
		goto found_buffer;
	}

	FUNC1(c, write_list);

	b = new_b;
	b->hold_count = 1;
	b->read_error = 0;
	b->write_error = 0;
	FUNC4(b, block, LIST_CLEAN);

	if (nf == NF_FRESH) {
		b->state = 0;
		return b;
	}

	b->state = 1 << B_READING;
	*need_submit = 1;

	return b;

found_buffer:
	if (nf == NF_PREFETCH)
		return NULL;
	/*
	 * Note: it is essential that we don't wait for the buffer to be
	 * read if dm_bufio_get function is used. Both dm_bufio_get and
	 * dm_bufio_prefetch can be used in the driver request routine.
	 * If the user called both dm_bufio_prefetch and dm_bufio_get on
	 * the same buffer, it would deadlock if we waited.
	 */
	if (nf == NF_GET && FUNC7(FUNC6(B_READING, &b->state)))
		return NULL;

	b->hold_count++;
	FUNC5(b, FUNC6(B_DIRTY, &b->state) ||
		     FUNC6(B_WRITING, &b->state));
	return b;
}