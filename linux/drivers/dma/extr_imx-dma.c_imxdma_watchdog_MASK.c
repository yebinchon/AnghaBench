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
struct timer_list {int dummy; } ;
struct imxdma_engine {int /*<<< orphan*/  dev; } ;
struct imxdma_channel {int channel; int /*<<< orphan*/  dma_tasklet; struct imxdma_engine* imxdma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct imxdma_channel* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct imxdma_engine*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct imxdma_channel* imxdmac ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  watchdog ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct imxdma_channel *imxdmac = FUNC2(imxdmac, t, watchdog);
	struct imxdma_engine *imxdma = imxdmac->imxdma;
	int channel = imxdmac->channel;

	FUNC3(imxdma, 0, FUNC0(channel));

	/* Tasklet watchdog error handler */
	FUNC4(&imxdmac->dma_tasklet);
	FUNC1(imxdma->dev, "channel %d: watchdog timeout!\n",
		imxdmac->channel);
}