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
struct mmp_pdma_chan {int /*<<< orphan*/  desc_lock; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct mmp_pdma_chan*) ; 
 struct mmp_pdma_chan* FUNC3 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC4(struct dma_chan *dchan)
{
	struct mmp_pdma_chan *chan = FUNC3(dchan);
	unsigned long flags;

	FUNC0(&chan->desc_lock, flags);
	FUNC2(chan);
	FUNC1(&chan->desc_lock, flags);
}