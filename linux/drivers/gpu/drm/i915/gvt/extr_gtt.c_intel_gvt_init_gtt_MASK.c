#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned long scratch_mfn; int /*<<< orphan*/  ppgtt_mm_lock; int /*<<< orphan*/  ppgtt_mm_lru_list_head; int /*<<< orphan*/  scratch_page; int /*<<< orphan*/ * gma_ops; int /*<<< orphan*/ * pte_ops; } ;
struct intel_gvt {TYPE_4__ gtt; TYPE_3__* dev_priv; } ;
struct device {int dummy; } ;
typedef  int dma_addr_t ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct TYPE_7__ {TYPE_2__ drm; } ;
struct TYPE_5__ {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I915_GTT_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ enable_out_of_sync ; 
 int /*<<< orphan*/  gen8_gtt_gma_ops ; 
 int /*<<< orphan*/  gen8_gtt_pte_ops ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 

int FUNC11(struct intel_gvt *gvt)
{
	int ret;
	void *page;
	struct device *dev = &gvt->dev_priv->drm.pdev->dev;
	dma_addr_t daddr;

	FUNC6("init gtt\n");

	gvt->gtt.pte_ops = &gen8_gtt_pte_ops;
	gvt->gtt.gma_ops = &gen8_gtt_gma_ops;

	page = (void *)FUNC5(GFP_KERNEL);
	if (!page) {
		FUNC7("fail to allocate scratch ggtt page\n");
		return -ENOMEM;
	}

	daddr = FUNC2(dev, FUNC10(page), 0,
			4096, PCI_DMA_BIDIRECTIONAL);
	if (FUNC3(dev, daddr)) {
		FUNC7("fail to dmamap scratch ggtt page\n");
		FUNC1(FUNC10(page));
		return -ENOMEM;
	}

	gvt->gtt.scratch_page = FUNC10(page);
	gvt->gtt.scratch_mfn = (unsigned long)(daddr >> I915_GTT_PAGE_SHIFT);

	if (enable_out_of_sync) {
		ret = FUNC9(gvt);
		if (ret) {
			FUNC7("fail to initialize SPT oos\n");
			FUNC4(dev, daddr, 4096, PCI_DMA_BIDIRECTIONAL);
			FUNC1(gvt->gtt.scratch_page);
			return ret;
		}
	}
	FUNC0(&gvt->gtt.ppgtt_mm_lru_list_head);
	FUNC8(&gvt->gtt.ppgtt_mm_lock);
	return 0;
}