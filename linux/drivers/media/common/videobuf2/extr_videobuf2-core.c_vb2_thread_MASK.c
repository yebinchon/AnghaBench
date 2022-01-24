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
struct vb2_threadio_data {scalar_t__ stop; int /*<<< orphan*/  priv; scalar_t__ (* fnc ) (struct vb2_buffer*,int /*<<< orphan*/ ) ;} ;
struct vb2_queue {unsigned int num_buffers; int copy_timestamp; struct vb2_buffer** bufs; scalar_t__ is_output; struct vb2_threadio_data* threadio; } ;
struct vb2_buffer {scalar_t__ state; int /*<<< orphan*/  index; int /*<<< orphan*/  timestamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct vb2_queue*,int /*<<< orphan*/ ,struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (struct vb2_queue*,unsigned int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct vb2_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait_finish ; 
 int /*<<< orphan*/  wait_prepare ; 

__attribute__((used)) static int FUNC11(void *data)
{
	struct vb2_queue *q = data;
	struct vb2_threadio_data *threadio = q->threadio;
	bool copy_timestamp = false;
	unsigned prequeue = 0;
	unsigned index = 0;
	int ret = 0;

	if (q->is_output) {
		prequeue = q->num_buffers;
		copy_timestamp = q->copy_timestamp;
	}

	FUNC6();

	for (;;) {
		struct vb2_buffer *vb;

		/*
		 * Call vb2_dqbuf to get buffer back.
		 */
		if (prequeue) {
			vb = q->bufs[index++];
			prequeue--;
		} else {
			FUNC0(q, wait_finish, q);
			if (!threadio->stop)
				ret = FUNC9(q, &index, NULL, 0);
			FUNC0(q, wait_prepare, q);
			FUNC1(5, "file io: vb2_dqbuf result: %d\n", ret);
			if (!ret)
				vb = q->bufs[index];
		}
		if (ret || threadio->stop)
			break;
		FUNC8();

		if (vb->state != VB2_BUF_STATE_ERROR)
			if (threadio->fnc(vb, threadio->priv))
				break;
		FUNC0(q, wait_finish, q);
		if (copy_timestamp)
			vb->timestamp = FUNC3();
		if (!threadio->stop)
			ret = FUNC10(q, vb->index, NULL, NULL);
		FUNC0(q, wait_prepare, q);
		if (ret || threadio->stop)
			break;
	}

	/* Hmm, linux becomes *very* unhappy without this ... */
	while (!FUNC2()) {
		FUNC5(TASK_INTERRUPTIBLE);
		FUNC4();
	}
	return 0;
}