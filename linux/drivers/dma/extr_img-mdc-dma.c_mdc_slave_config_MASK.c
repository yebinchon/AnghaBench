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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct dma_slave_config {int dummy; } ;
struct mdc_chan {TYPE_1__ vc; struct dma_slave_config config; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mdc_chan* FUNC2 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC3(struct dma_chan *chan,
			    struct dma_slave_config *config)
{
	struct mdc_chan *mchan = FUNC2(chan);
	unsigned long flags;

	FUNC0(&mchan->vc.lock, flags);
	mchan->config = *config;
	FUNC1(&mchan->vc.lock, flags);

	return 0;
}