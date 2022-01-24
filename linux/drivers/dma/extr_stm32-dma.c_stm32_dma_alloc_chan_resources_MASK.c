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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct stm32_dma_device {TYPE_1__ ddev; } ;
struct stm32_dma_chan {int config_init; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct stm32_dma_chan*) ; 
 struct stm32_dma_device* FUNC3 (struct stm32_dma_chan*) ; 
 struct stm32_dma_chan* FUNC4 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC5(struct dma_chan *c)
{
	struct stm32_dma_chan *chan = FUNC4(c);
	struct stm32_dma_device *dmadev = FUNC3(chan);
	int ret;

	chan->config_init = false;

	ret = FUNC0(dmadev->ddev.dev);
	if (ret < 0)
		return ret;

	ret = FUNC2(chan);
	if (ret < 0)
		FUNC1(dmadev->ddev.dev);

	return ret;
}