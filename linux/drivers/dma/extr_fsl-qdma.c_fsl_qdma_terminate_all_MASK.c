#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct fsl_qdma_chan {TYPE_1__ vchan; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct fsl_qdma_chan* FUNC3 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct dma_chan *chan)
{
	FUNC0(head);
	unsigned long flags;
	struct fsl_qdma_chan *fsl_chan = FUNC3(chan);

	FUNC1(&fsl_chan->vchan.lock, flags);
	FUNC5(&fsl_chan->vchan, &head);
	FUNC2(&fsl_chan->vchan.lock, flags);
	FUNC4(&fsl_chan->vchan, &head);
	return 0;
}