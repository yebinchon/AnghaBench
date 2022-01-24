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
struct mmp_tdma_chan {scalar_t__ irq; int /*<<< orphan*/  dev; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,struct mmp_tdma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmp_tdma_chan*) ; 
 struct mmp_tdma_chan* FUNC2 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC3(struct dma_chan *chan)
{
	struct mmp_tdma_chan *tdmac = FUNC2(chan);

	if (tdmac->irq)
		FUNC0(tdmac->dev, tdmac->irq, tdmac);
	FUNC1(tdmac);
	return;
}