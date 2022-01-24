#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ size; int /*<<< orphan*/  import_attach; } ;
struct armada_gem_object {int mapped; TYPE_2__* sgt; int /*<<< orphan*/  dev_addr; TYPE_1__ obj; } ;
struct TYPE_6__ {int nents; int /*<<< orphan*/  sgl; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct armada_gem_object *dobj)
{
	int ret;

	dobj->sgt = FUNC3(dobj->obj.import_attach,
					   DMA_TO_DEVICE);
	if (FUNC1(dobj->sgt)) {
		ret = FUNC2(dobj->sgt);
		dobj->sgt = NULL;
		FUNC0("dma_buf_map_attachment() error: %d\n", ret);
		return ret;
	}
	if (dobj->sgt->nents > 1) {
		FUNC0("dma_buf_map_attachment() returned an (unsupported) scattered list\n");
		return -EINVAL;
	}
	if (FUNC5(dobj->sgt->sgl) < dobj->obj.size) {
		FUNC0("dma_buf_map_attachment() returned a small buffer\n");
		return -EINVAL;
	}
	dobj->dev_addr = FUNC4(dobj->sgt->sgl);
	dobj->mapped = true;
	return 0;
}