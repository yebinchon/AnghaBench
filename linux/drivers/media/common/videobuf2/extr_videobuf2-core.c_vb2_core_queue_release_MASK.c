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
struct vb2_queue {int /*<<< orphan*/  mmap_lock; int /*<<< orphan*/  num_buffers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct vb2_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct vb2_queue *q)
{
	FUNC0(q);
	FUNC1(q);
	FUNC3(&q->mmap_lock);
	FUNC2(q, q->num_buffers);
	FUNC4(&q->mmap_lock);
}