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
struct imxdma_engine {int /*<<< orphan*/  lock; } ;
struct imxdma_channel {int /*<<< orphan*/  ld_free; int /*<<< orphan*/  ld_queue; int /*<<< orphan*/  ld_active; struct imxdma_engine* imxdma; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct imxdma_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct imxdma_channel* FUNC4 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC5(struct dma_chan *chan)
{
	struct imxdma_channel *imxdmac = FUNC4(chan);
	struct imxdma_engine *imxdma = imxdmac->imxdma;
	unsigned long flags;

	FUNC0(imxdmac);

	FUNC2(&imxdma->lock, flags);
	FUNC1(&imxdmac->ld_active, &imxdmac->ld_free);
	FUNC1(&imxdmac->ld_queue, &imxdmac->ld_free);
	FUNC3(&imxdma->lock, flags);
	return 0;
}