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
struct zx_dma_dev {int /*<<< orphan*/  lock; } ;
struct zx_dma_chan {scalar_t__ ccfg; int /*<<< orphan*/  vc; int /*<<< orphan*/  node; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct zx_dma_chan* FUNC3 (struct dma_chan*) ; 
 struct zx_dma_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct dma_chan *chan)
{
	struct zx_dma_chan *c = FUNC3(chan);
	struct zx_dma_dev *d = FUNC4(chan->device);
	unsigned long flags;

	FUNC1(&d->lock, flags);
	FUNC0(&c->node);
	FUNC2(&d->lock, flags);

	FUNC5(&c->vc);
	c->ccfg = 0;
}