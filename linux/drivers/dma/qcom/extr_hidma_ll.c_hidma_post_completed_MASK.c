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
typedef  void* u8 ;
typedef  size_t u32 ;
struct hidma_tre {size_t tre_index; scalar_t__ queued; void* err_code; void* err_info; } ;
struct hidma_lldev {size_t tre_processed_off; int /*<<< orphan*/  task; int /*<<< orphan*/  handoff_fifo; int /*<<< orphan*/  lock; int /*<<< orphan*/  tre_ring_size; int /*<<< orphan*/  pending_tre_count; int /*<<< orphan*/  dev; struct hidma_tre** pending_tre_list; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t,int /*<<< orphan*/ ) ; 
 size_t HIDMA_TRE_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct hidma_tre*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct hidma_lldev *lldev, u8 err_info,
				u8 err_code)
{
	struct hidma_tre *tre;
	unsigned long flags;
	u32 tre_iterator;

	FUNC5(&lldev->lock, flags);

	tre_iterator = lldev->tre_processed_off;
	tre = lldev->pending_tre_list[tre_iterator / HIDMA_TRE_SIZE];
	if (!tre) {
		FUNC6(&lldev->lock, flags);
		FUNC3(lldev->dev, "tre_index [%d] and tre out of sync\n",
			 tre_iterator / HIDMA_TRE_SIZE);
		return -EINVAL;
	}
	lldev->pending_tre_list[tre->tre_index] = NULL;

	/*
	 * Keep track of pending TREs that SW is expecting to receive
	 * from HW. We got one now. Decrement our counter.
	 */
	if (FUNC1(&lldev->pending_tre_count) < 0) {
		FUNC3(lldev->dev, "tre count mismatch on completion");
		FUNC2(&lldev->pending_tre_count, 0);
	}

	FUNC0(tre_iterator, HIDMA_TRE_SIZE,
				 lldev->tre_ring_size);
	lldev->tre_processed_off = tre_iterator;
	FUNC6(&lldev->lock, flags);

	tre->err_info = err_info;
	tre->err_code = err_code;
	tre->queued = 0;

	FUNC4(&lldev->handoff_fifo, tre);
	FUNC7(&lldev->task);

	return 0;
}