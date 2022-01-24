#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct file {struct dma_buf* private_data; } ;
struct dma_resv_list {unsigned int shared_count; int /*<<< orphan*/ * shared; } ;
struct dma_resv {int /*<<< orphan*/  seq; int /*<<< orphan*/  fence_excl; int /*<<< orphan*/  fence; } ;
struct dma_fence {int dummy; } ;
struct dma_buf_poll_cb_t {int active; int /*<<< orphan*/  cb; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct dma_buf {TYPE_1__ poll; struct dma_buf_poll_cb_t cb_shared; struct dma_buf_poll_cb_t cb_excl; struct dma_resv* resv; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_fence*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 unsigned int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC13(struct file *file, poll_table *poll)
{
	struct dma_buf *dmabuf;
	struct dma_resv *resv;
	struct dma_resv_list *fobj;
	struct dma_fence *fence_excl;
	__poll_t events;
	unsigned shared_count, seq;

	dmabuf = file->private_data;
	if (!dmabuf || !dmabuf->resv)
		return EPOLLERR;

	resv = dmabuf->resv;

	FUNC5(file, &dmabuf->poll, poll);

	events = FUNC4(poll) & (EPOLLIN | EPOLLOUT);
	if (!events)
		return 0;

retry:
	seq = FUNC9(&resv->seq);
	FUNC7();

	fobj = FUNC6(resv->fence);
	if (fobj)
		shared_count = fobj->shared_count;
	else
		shared_count = 0;
	fence_excl = FUNC6(resv->fence_excl);
	if (FUNC10(&resv->seq, seq)) {
		FUNC8();
		goto retry;
	}

	if (fence_excl && (!(events & EPOLLOUT) || shared_count == 0)) {
		struct dma_buf_poll_cb_t *dcb = &dmabuf->cb_excl;
		__poll_t pevents = EPOLLIN;

		if (shared_count == 0)
			pevents |= EPOLLOUT;

		FUNC11(&dmabuf->poll.lock);
		if (dcb->active) {
			dcb->active |= pevents;
			events &= ~pevents;
		} else
			dcb->active = pevents;
		FUNC12(&dmabuf->poll.lock);

		if (events & pevents) {
			if (!FUNC2(fence_excl)) {
				/* force a recheck */
				events &= ~pevents;
				FUNC0(NULL, &dcb->cb);
			} else if (!FUNC1(fence_excl, &dcb->cb,
							   dma_buf_poll_cb)) {
				events &= ~pevents;
				FUNC3(fence_excl);
			} else {
				/*
				 * No callback queued, wake up any additional
				 * waiters.
				 */
				FUNC3(fence_excl);
				FUNC0(NULL, &dcb->cb);
			}
		}
	}

	if ((events & EPOLLOUT) && shared_count > 0) {
		struct dma_buf_poll_cb_t *dcb = &dmabuf->cb_shared;
		int i;

		/* Only queue a new callback if no event has fired yet */
		FUNC11(&dmabuf->poll.lock);
		if (dcb->active)
			events &= ~EPOLLOUT;
		else
			dcb->active = EPOLLOUT;
		FUNC12(&dmabuf->poll.lock);

		if (!(events & EPOLLOUT))
			goto out;

		for (i = 0; i < shared_count; ++i) {
			struct dma_fence *fence = FUNC6(fobj->shared[i]);

			if (!FUNC2(fence)) {
				/*
				 * fence refcount dropped to zero, this means
				 * that fobj has been freed
				 *
				 * call dma_buf_poll_cb and force a recheck!
				 */
				events &= ~EPOLLOUT;
				FUNC0(NULL, &dcb->cb);
				break;
			}
			if (!FUNC1(fence, &dcb->cb,
						    dma_buf_poll_cb)) {
				FUNC3(fence);
				events &= ~EPOLLOUT;
				break;
			}
			FUNC3(fence);
		}

		/* No callback queued, wake up any additional waiters. */
		if (i == shared_count)
			FUNC0(NULL, &dcb->cb);
	}

out:
	FUNC8();
	return events;
}