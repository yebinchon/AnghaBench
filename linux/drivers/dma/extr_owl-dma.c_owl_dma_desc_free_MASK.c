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
struct TYPE_4__ {TYPE_1__* chan; } ;
struct virt_dma_desc {TYPE_2__ tx; } ;
struct owl_dma_txd {int dummy; } ;
struct owl_dma {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct owl_dma*,struct owl_dma_txd*) ; 
 struct owl_dma* FUNC1 (int /*<<< orphan*/ ) ; 
 struct owl_dma_txd* FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(struct virt_dma_desc *vd)
{
	struct owl_dma *od = FUNC1(vd->tx.chan->device);
	struct owl_dma_txd *txd = FUNC2(&vd->tx);

	FUNC0(od, txd);
}