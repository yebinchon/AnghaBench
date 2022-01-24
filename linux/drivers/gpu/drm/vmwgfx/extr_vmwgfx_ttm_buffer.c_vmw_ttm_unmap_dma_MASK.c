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
struct TYPE_2__ {int /*<<< orphan*/ * sgt; } ;
struct vmw_ttm_tt {int mapped; int /*<<< orphan*/  sg_alloc_size; TYPE_1__ vsgt; struct vmw_private* dev_priv; } ;
struct vmw_private {int map_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  vmw_dma_map_bind 129 
#define  vmw_dma_map_populate 128 
 int /*<<< orphan*/  FUNC2 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_ttm_tt*) ; 

__attribute__((used)) static void FUNC4(struct vmw_ttm_tt *vmw_tt)
{
	struct vmw_private *dev_priv = vmw_tt->dev_priv;

	if (!vmw_tt->vsgt.sgt)
		return;

	switch (dev_priv->map_mode) {
	case vmw_dma_map_bind:
	case vmw_dma_map_populate:
		FUNC3(vmw_tt);
		FUNC0(vmw_tt->vsgt.sgt);
		vmw_tt->vsgt.sgt = NULL;
		FUNC1(FUNC2(dev_priv),
				    vmw_tt->sg_alloc_size);
		break;
	default:
		break;
	}
	vmw_tt->mapped = false;
}