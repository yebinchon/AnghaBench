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
struct iop_adma_chan {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC0 (struct iop_adma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(unsigned long data)
{
	struct iop_adma_chan *iop_chan = (struct iop_adma_chan *) data;

	/* lockdep will flag depedency submissions as potentially
	 * recursive locking, this is not the case as a dependency
	 * submission will never recurse a channels submit routine.
	 * There are checks in async_tx.c to prevent this.
	 */
	FUNC1(&iop_chan->lock, SINGLE_DEPTH_NESTING);
	FUNC0(iop_chan);
	FUNC2(&iop_chan->lock);
}