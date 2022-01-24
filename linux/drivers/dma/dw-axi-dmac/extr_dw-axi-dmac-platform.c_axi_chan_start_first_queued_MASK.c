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
struct TYPE_2__ {int /*<<< orphan*/  cookie; } ;
struct virt_dma_desc {TYPE_1__ tx; } ;
struct axi_dma_desc {int dummy; } ;
struct axi_dma_chan {int /*<<< orphan*/  vc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct axi_dma_chan*,struct axi_dma_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct axi_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct axi_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct virt_dma_desc* FUNC4 (int /*<<< orphan*/ *) ; 
 struct axi_dma_desc* FUNC5 (struct virt_dma_desc*) ; 

__attribute__((used)) static void FUNC6(struct axi_dma_chan *chan)
{
	struct axi_dma_desc *desc;
	struct virt_dma_desc *vd;

	vd = FUNC4(&chan->vc);
	if (!vd)
		return;

	desc = FUNC5(vd);
	FUNC3(FUNC2(chan), "%s: started %u\n", FUNC1(chan),
		vd->tx.cookie);
	FUNC0(chan, desc);
}