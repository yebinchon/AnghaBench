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
struct vb2_queue {int /*<<< orphan*/  owned_by_drv_count; } ;
struct vb2_buffer {int /*<<< orphan*/  state; struct vb2_queue* vb2_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  buf_queue ; 
 int /*<<< orphan*/  FUNC1 (struct vb2_buffer*,int /*<<< orphan*/ ,struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct vb2_queue*,struct vb2_buffer*) ; 

__attribute__((used)) static void FUNC3(struct vb2_buffer *vb)
{
	struct vb2_queue *q = vb->vb2_queue;

	vb->state = VB2_BUF_STATE_ACTIVE;
	FUNC0(&q->owned_by_drv_count);

	FUNC2(q, vb);

	FUNC1(vb, buf_queue, vb);
}