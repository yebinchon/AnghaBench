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
struct virt_dma_desc {int /*<<< orphan*/  node; } ;
struct hsu_dma_chan {int /*<<< orphan*/ * desc; int /*<<< orphan*/  vchan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hsu_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct virt_dma_desc*) ; 
 struct virt_dma_desc* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hsu_dma_chan *hsuc)
{
	struct virt_dma_desc *vdesc;

	/* Get the next descriptor */
	vdesc = FUNC3(&hsuc->vchan);
	if (!vdesc) {
		hsuc->desc = NULL;
		return;
	}

	FUNC1(&vdesc->node);
	hsuc->desc = FUNC2(vdesc);

	/* Start the channel with a new descriptor */
	FUNC0(hsuc);
}