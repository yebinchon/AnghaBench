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
struct dcp {int /*<<< orphan*/ * lock; int /*<<< orphan*/ * queue; } ;
struct crypto_async_request {int /*<<< orphan*/  (* complete ) (struct crypto_async_request*,int) ;} ;

/* Variables and functions */
 int DCP_CHAN_HASH_SHA ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 struct crypto_async_request* FUNC0 (int /*<<< orphan*/ *) ; 
 struct crypto_async_request* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct crypto_async_request*) ; 
 struct dcp* global_sdcp ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_async_request*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct crypto_async_request*,int) ; 

__attribute__((used)) static int FUNC10(void *data)
{
	struct dcp *sdcp = global_sdcp;
	const int chan = DCP_CHAN_HASH_SHA;

	struct crypto_async_request *backlog;
	struct crypto_async_request *arq;
	int ret;

	while (!FUNC3()) {
		FUNC5(TASK_INTERRUPTIBLE);

		FUNC6(&sdcp->lock[chan]);
		backlog = FUNC1(&sdcp->queue[chan]);
		arq = FUNC0(&sdcp->queue[chan]);
		FUNC7(&sdcp->lock[chan]);

		if (!backlog && !arq) {
			FUNC4();
			continue;
		}

		FUNC5(TASK_RUNNING);

		if (backlog)
			backlog->complete(backlog, -EINPROGRESS);

		if (arq) {
			ret = FUNC2(arq);
			arq->complete(arq, ret);
		}
	}

	return 0;
}