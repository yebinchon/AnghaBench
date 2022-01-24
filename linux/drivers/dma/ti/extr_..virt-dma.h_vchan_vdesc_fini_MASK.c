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
struct TYPE_2__ {int /*<<< orphan*/  chan; } ;
struct virt_dma_desc {int /*<<< orphan*/  node; TYPE_1__ tx; } ;
struct virt_dma_chan {int /*<<< orphan*/  (* desc_free ) (struct virt_dma_desc*) ;int /*<<< orphan*/  desc_allocated; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct virt_dma_desc*) ; 
 struct virt_dma_chan* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct virt_dma_desc *vd)
{
	struct virt_dma_chan *vc = FUNC3(vd->tx.chan);

	if (FUNC0(&vd->tx))
		FUNC1(&vd->node, &vc->desc_allocated);
	else
		vc->desc_free(vd);
}