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
struct TYPE_2__ {int /*<<< orphan*/ * wait; } ;
struct dmatest_thread {int type; int pending; int /*<<< orphan*/  node; int /*<<< orphan*/  task; int /*<<< orphan*/  done_wait; TYPE_1__ test_done; struct dma_chan* chan; struct dmatest_info* info; } ;
struct dmatest_params {unsigned int threads_per_chan; } ;
struct dmatest_info {struct dmatest_params params; } ;
struct dmatest_chan {int /*<<< orphan*/  threads; struct dma_chan* chan; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_transaction_type { ____Placeholder_dma_transaction_type } dma_transaction_type ;

/* Variables and functions */
 int DMA_MEMCPY ; 
 int DMA_MEMSET ; 
 int DMA_PQ ; 
 int DMA_XOR ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_chan*) ; 
 int /*<<< orphan*/  dmatest_func ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dmatest_thread*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct dmatest_thread*,char*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 struct dmatest_thread* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct dmatest_info *info,
		struct dmatest_chan *dtc, enum dma_transaction_type type)
{
	struct dmatest_params *params = &info->params;
	struct dmatest_thread *thread;
	struct dma_chan *chan = dtc->chan;
	char *op;
	unsigned int i;

	if (type == DMA_MEMCPY)
		op = "copy";
	else if (type == DMA_MEMSET)
		op = "set";
	else if (type == DMA_XOR)
		op = "xor";
	else if (type == DMA_PQ)
		op = "pq";
	else
		return -EINVAL;

	for (i = 0; i < params->threads_per_chan; i++) {
		thread = FUNC6(sizeof(struct dmatest_thread), GFP_KERNEL);
		if (!thread) {
			FUNC8("No memory for %s-%s%u\n",
				FUNC1(chan), op, i);
			break;
		}
		thread->info = info;
		thread->chan = dtc->chan;
		thread->type = type;
		thread->test_done.wait = &thread->done_wait;
		FUNC3(&thread->done_wait);
		FUNC9();
		thread->task = FUNC5(dmatest_func, thread, "%s-%s%u",
				FUNC1(chan), op, i);
		if (FUNC0(thread->task)) {
			FUNC8("Failed to create thread %s-%s%u\n",
				FUNC1(chan), op, i);
			FUNC4(thread);
			break;
		}

		/* srcbuf and dstbuf are allocated by the thread itself */
		FUNC2(thread->task);
		FUNC7(&thread->node, &dtc->threads);
		thread->pending = true;
	}

	return i;
}