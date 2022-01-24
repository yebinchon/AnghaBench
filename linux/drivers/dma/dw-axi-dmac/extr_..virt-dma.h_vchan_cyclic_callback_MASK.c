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
struct virt_dma_desc {TYPE_1__ tx; } ;
struct virt_dma_chan {int /*<<< orphan*/  task; struct virt_dma_desc* cyclic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct virt_dma_chan* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct virt_dma_desc *vd)
{
	struct virt_dma_chan *vc = FUNC1(vd->tx.chan);

	vc->cyclic = vd;
	FUNC0(&vc->task);
}