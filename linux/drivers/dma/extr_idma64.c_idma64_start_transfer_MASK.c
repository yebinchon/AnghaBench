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
struct virt_dma_desc {int /*<<< orphan*/  node; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {TYPE_1__ chan; } ;
struct idma64_chan {int /*<<< orphan*/ * desc; TYPE_2__ vchan; } ;
struct idma64 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct idma64*,struct idma64_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct idma64*,struct idma64_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct idma64* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct virt_dma_desc*) ; 
 struct virt_dma_desc* FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(struct idma64_chan *idma64c)
{
	struct idma64 *idma64 = FUNC3(idma64c->vchan.chan.device);
	struct virt_dma_desc *vdesc;

	/* Get the next descriptor */
	vdesc = FUNC5(&idma64c->vchan);
	if (!vdesc) {
		idma64c->desc = NULL;
		return;
	}

	FUNC2(&vdesc->node);
	idma64c->desc = FUNC4(vdesc);

	/* Configure the channel */
	FUNC0(idma64, idma64c);

	/* Start the channel with a new descriptor */
	FUNC1(idma64, idma64c);
}