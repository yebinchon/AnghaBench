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
struct sun4i_dma_vchan {TYPE_1__ vc; struct sun4i_dma_pchan* pchan; int /*<<< orphan*/ * processing; } ;
struct sun4i_dma_pchan {scalar_t__ base; scalar_t__ is_dedicated; } ;
struct sun4i_dma_dev {int dummy; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUN4I_DDMA_CFG_REG ; 
 scalar_t__ SUN4I_NDMA_CFG_REG ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC1 (struct sun4i_dma_dev*,struct sun4i_dma_pchan*) ; 
 int /*<<< orphan*/  FUNC2 (struct sun4i_dma_dev*,struct sun4i_dma_pchan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct sun4i_dma_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 struct sun4i_dma_vchan* FUNC6 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct dma_chan *chan)
{
	struct sun4i_dma_dev *priv = FUNC5(chan->device);
	struct sun4i_dma_vchan *vchan = FUNC6(chan);
	struct sun4i_dma_pchan *pchan = vchan->pchan;
	FUNC0(head);
	unsigned long flags;

	FUNC3(&vchan->vc.lock, flags);
	FUNC8(&vchan->vc, &head);
	FUNC4(&vchan->vc.lock, flags);

	/*
	 * Clearing the configuration register will halt the pchan. Interrupts
	 * may still trigger, so don't forget to disable them.
	 */
	if (pchan) {
		if (pchan->is_dedicated)
			FUNC9(0, pchan->base + SUN4I_DDMA_CFG_REG);
		else
			FUNC9(0, pchan->base + SUN4I_NDMA_CFG_REG);
		FUNC2(priv, pchan, 0, 0);
		FUNC1(priv, pchan);
	}

	FUNC3(&vchan->vc.lock, flags);
	FUNC7(&vchan->vc, &head);
	/* Clear these so the vchan is usable again */
	vchan->processing = NULL;
	vchan->pchan = NULL;
	FUNC4(&vchan->vc.lock, flags);

	return 0;
}