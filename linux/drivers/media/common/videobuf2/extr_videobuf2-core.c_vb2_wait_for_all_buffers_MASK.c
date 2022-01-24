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
struct vb2_queue {int /*<<< orphan*/  owned_by_drv_count; int /*<<< orphan*/  done_wq; scalar_t__ start_streaming_called; int /*<<< orphan*/  streaming; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

int FUNC3(struct vb2_queue *q)
{
	if (!q->streaming) {
		FUNC1(1, "streaming off, will not wait for buffers\n");
		return -EINVAL;
	}

	if (q->start_streaming_called)
		FUNC2(q->done_wq, !FUNC0(&q->owned_by_drv_count));
	return 0;
}