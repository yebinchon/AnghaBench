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
struct virt_dma_desc {int /*<<< orphan*/  tx; int /*<<< orphan*/  node; } ;
struct moxart_chan {scalar_t__ sgidx; int /*<<< orphan*/ * desc; int /*<<< orphan*/  vc; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct moxart_chan*,int /*<<< orphan*/ ) ; 
 struct moxart_chan* FUNC2 (struct dma_chan*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 struct virt_dma_desc* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct dma_chan *chan)
{
	struct moxart_chan *ch = FUNC2(chan);
	struct virt_dma_desc *vd;

	vd = FUNC4(&ch->vc);

	if (!vd) {
		ch->desc = NULL;
		return;
	}

	FUNC0(&vd->node);

	ch->desc = FUNC3(&vd->tx);
	ch->sgidx = 0;

	FUNC1(ch, 0);
}