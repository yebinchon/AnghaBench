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
typedef  int /*<<< orphan*/  uint32_t ;
struct vmw_marker_queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  head; } ;
struct vmw_marker {int /*<<< orphan*/  head; int /*<<< orphan*/  submitted; int /*<<< orphan*/  seqno; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct vmw_marker* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct vmw_marker_queue *queue,
		   uint32_t seqno)
{
	struct vmw_marker *marker = FUNC0(sizeof(*marker), GFP_KERNEL);

	if (FUNC5(!marker))
		return -ENOMEM;

	marker->seqno = seqno;
	marker->submitted = FUNC1();
	FUNC3(&queue->lock);
	FUNC2(&marker->head, &queue->head);
	FUNC4(&queue->lock);

	return 0;
}