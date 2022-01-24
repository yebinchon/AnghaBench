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
struct jz4780_dma_desc {int /*<<< orphan*/  desc_phys; int /*<<< orphan*/  desc; } ;
struct jz4780_dma_chan {int /*<<< orphan*/  desc_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct jz4780_dma_desc*) ; 
 struct jz4780_dma_chan* FUNC2 (int /*<<< orphan*/ ) ; 
 struct jz4780_dma_desc* FUNC3 (struct virt_dma_desc*) ; 

__attribute__((used)) static void FUNC4(struct virt_dma_desc *vdesc)
{
	struct jz4780_dma_desc *desc = FUNC3(vdesc);
	struct jz4780_dma_chan *jzchan = FUNC2(vdesc->tx.chan);

	FUNC0(jzchan->desc_pool, desc->desc, desc->desc_phys);
	FUNC1(desc);
}