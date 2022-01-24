#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int type; int mfn; int /*<<< orphan*/  page; int /*<<< orphan*/  vaddr; } ;
struct intel_vgpu_ppgtt_spt {TYPE_5__ shadow_page; int /*<<< orphan*/  post_shadow_list; int /*<<< orphan*/  refcount; struct intel_vgpu* vgpu; } ;
struct TYPE_10__ {int /*<<< orphan*/  spt_tree; } ;
struct intel_vgpu {TYPE_4__ gtt; TYPE_6__* gvt; } ;
struct device {int dummy; } ;
typedef  enum intel_gvt_gtt_type { ____Placeholder_intel_gvt_gtt_type } intel_gvt_gtt_type ;
typedef  int dma_addr_t ;
struct TYPE_12__ {TYPE_3__* dev_priv; } ;
struct TYPE_8__ {TYPE_1__* pdev; } ;
struct TYPE_9__ {TYPE_2__ drm; } ;
struct TYPE_7__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct intel_vgpu_ppgtt_spt* FUNC0 (int) ; 
 int GFP_KERNEL ; 
 int I915_GTT_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int __GFP_ZERO ; 
 struct intel_vgpu_ppgtt_spt* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_vgpu_ppgtt_spt*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,struct intel_vgpu_ppgtt_spt*) ; 
 scalar_t__ FUNC11 (TYPE_6__*) ; 

__attribute__((used)) static struct intel_vgpu_ppgtt_spt *FUNC12(
		struct intel_vgpu *vgpu, enum intel_gvt_gtt_type type)
{
	struct device *kdev = &vgpu->gvt->dev_priv->drm.pdev->dev;
	struct intel_vgpu_ppgtt_spt *spt = NULL;
	dma_addr_t daddr;
	int ret;

retry:
	spt = FUNC2(GFP_KERNEL | __GFP_ZERO);
	if (!spt) {
		if (FUNC11(vgpu->gvt))
			goto retry;

		FUNC8("fail to allocate ppgtt shadow page\n");
		return FUNC0(-ENOMEM);
	}

	spt->vgpu = vgpu;
	FUNC3(&spt->refcount, 1);
	FUNC1(&spt->post_shadow_list);

	/*
	 * Init shadow_page.
	 */
	spt->shadow_page.type = type;
	daddr = FUNC4(kdev, spt->shadow_page.page,
			     0, 4096, PCI_DMA_BIDIRECTIONAL);
	if (FUNC5(kdev, daddr)) {
		FUNC8("fail to map dma addr\n");
		ret = -EINVAL;
		goto err_free_spt;
	}
	spt->shadow_page.vaddr = FUNC9(spt->shadow_page.page);
	spt->shadow_page.mfn = daddr >> I915_GTT_PAGE_SHIFT;

	ret = FUNC10(&vgpu->gtt.spt_tree, spt->shadow_page.mfn, spt);
	if (ret)
		goto err_unmap_dma;

	return spt;

err_unmap_dma:
	FUNC6(kdev, daddr, PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
err_free_spt:
	FUNC7(spt);
	return FUNC0(ret);
}