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
struct TYPE_3__ {int /*<<< orphan*/  chan; } ;
struct virt_dma_desc {TYPE_1__ tx; } ;
struct pl08x_txd {int /*<<< orphan*/  done; } ;
struct pl08x_dma_chan {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pl08x_txd*) ; 
 int /*<<< orphan*/  FUNC2 (struct pl08x_dma_chan*) ; 
 struct pl08x_dma_chan* FUNC3 (int /*<<< orphan*/ ) ; 
 struct pl08x_txd* FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct virt_dma_desc *vd)
{
	struct pl08x_txd *txd = FUNC4(&vd->tx);
	struct pl08x_dma_chan *plchan = FUNC3(vd->tx.chan);

	FUNC0(&vd->tx);
	if (!txd->done)
		FUNC2(plchan);

	FUNC1(plchan->host, txd);
}