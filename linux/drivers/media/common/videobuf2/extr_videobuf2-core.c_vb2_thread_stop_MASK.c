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
struct vb2_threadio_data {int stop; int /*<<< orphan*/ * thread; } ;
struct vb2_queue {struct vb2_threadio_data* threadio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct vb2_threadio_data*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_queue*) ; 

int FUNC4(struct vb2_queue *q)
{
	struct vb2_threadio_data *threadio = q->threadio;
	int err;

	if (threadio == NULL)
		return 0;
	threadio->stop = true;
	/* Wake up all pending sleeps in the thread */
	FUNC3(q);
	err = FUNC2(threadio->thread);
	FUNC0(q);
	threadio->thread = NULL;
	FUNC1(threadio);
	q->threadio = NULL;
	return err;
}