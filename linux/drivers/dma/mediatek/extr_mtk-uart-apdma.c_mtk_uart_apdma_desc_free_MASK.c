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
struct TYPE_2__ {struct dma_chan* chan; } ;
struct virt_dma_desc {TYPE_1__ tx; } ;
struct mtk_chan {int /*<<< orphan*/  desc; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mtk_chan* FUNC1 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC2(struct virt_dma_desc *vd)
{
	struct dma_chan *chan = vd->tx.chan;
	struct mtk_chan *c = FUNC1(chan);

	FUNC0(c->desc);
}