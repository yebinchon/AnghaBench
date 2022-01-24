#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct mtk_uart_apdmadev {TYPE_1__ ddev; } ;
struct TYPE_4__ {int /*<<< orphan*/  task; } ;
struct mtk_chan {TYPE_2__ vc; int /*<<< orphan*/  irq; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mtk_chan* FUNC3 (struct dma_chan*) ; 
 struct mtk_uart_apdmadev* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(struct dma_chan *chan)
{
	struct mtk_uart_apdmadev *mtkd = FUNC4(chan->device);
	struct mtk_chan *c = FUNC3(chan);

	FUNC0(c->irq, chan);

	FUNC2(&c->vc.task);

	FUNC5(&c->vc);

	FUNC1(mtkd->ddev.dev);
}