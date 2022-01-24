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
struct intel_vgpu_ppgtt_spt {int dummy; } ;
struct intel_vgpu {TYPE_2__* gvt; } ;
struct intel_gvt_gtt_pte_ops {unsigned long (* get_pfn ) (struct intel_gvt_gtt_entry*) ;int /*<<< orphan*/  (* set_pfn ) (struct intel_gvt_gtt_entry*,int) ;int /*<<< orphan*/  (* test_present ) (struct intel_gvt_gtt_entry*) ;} ;
struct intel_gvt_gtt_entry {int type; } ;
typedef  int dma_addr_t ;
struct TYPE_3__ {struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct TYPE_4__ {TYPE_1__ gtt; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  GTT_TYPE_PPGTT_PTE_1G_ENTRY 131 
#define  GTT_TYPE_PPGTT_PTE_2M_ENTRY 130 
#define  GTT_TYPE_PPGTT_PTE_4K_ENTRY 129 
#define  GTT_TYPE_PPGTT_PTE_64K_ENTRY 128 
 unsigned long I915_GTT_PAGE_SIZE_2M ; 
 int PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct intel_vgpu*,unsigned long,unsigned long,int*) ; 
 int FUNC4 (struct intel_vgpu*,struct intel_gvt_gtt_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_vgpu_ppgtt_spt*,struct intel_gvt_gtt_entry*,unsigned long) ; 
 int FUNC6 (struct intel_vgpu*,struct intel_vgpu_ppgtt_spt*,unsigned long,struct intel_gvt_gtt_entry*) ; 
 int FUNC7 (struct intel_vgpu*,struct intel_vgpu_ppgtt_spt*,unsigned long,struct intel_gvt_gtt_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_gvt_gtt_entry*) ; 
 unsigned long FUNC9 (struct intel_gvt_gtt_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_gvt_gtt_entry*,int) ; 

__attribute__((used)) static int FUNC11(struct intel_vgpu *vgpu,
	struct intel_vgpu_ppgtt_spt *spt, unsigned long index,
	struct intel_gvt_gtt_entry *ge)
{
	struct intel_gvt_gtt_pte_ops *pte_ops = vgpu->gvt->gtt.pte_ops;
	struct intel_gvt_gtt_entry se = *ge;
	unsigned long gfn, page_size = PAGE_SIZE;
	dma_addr_t dma_addr;
	int ret;

	if (!pte_ops->test_present(ge))
		return 0;

	gfn = pte_ops->get_pfn(ge);

	switch (ge->type) {
	case GTT_TYPE_PPGTT_PTE_4K_ENTRY:
		FUNC1("shadow 4K gtt entry\n");
		break;
	case GTT_TYPE_PPGTT_PTE_64K_ENTRY:
		FUNC1("shadow 64K gtt entry\n");
		/*
		 * The layout of 64K page is special, the page size is
		 * controlled by uper PDE. To be simple, we always split
		 * 64K page to smaller 4K pages in shadow PT.
		 */
		return FUNC7(vgpu, spt, index, &se);
	case GTT_TYPE_PPGTT_PTE_2M_ENTRY:
		FUNC1("shadow 2M gtt entry\n");
		ret = FUNC4(vgpu, ge);
		if (ret == 0)
			return FUNC6(vgpu, spt, index, &se);
		else if (ret < 0)
			return ret;
		page_size = I915_GTT_PAGE_SIZE_2M;
		break;
	case GTT_TYPE_PPGTT_PTE_1G_ENTRY:
		FUNC2("GVT doesn't support 1GB entry\n");
		return -EINVAL;
	default:
		FUNC0(1);
	};

	/* direct shadow */
	ret = FUNC3(vgpu, gfn, page_size,
						      &dma_addr);
	if (ret)
		return -ENXIO;

	pte_ops->set_pfn(&se, dma_addr >> PAGE_SHIFT);
	FUNC5(spt, &se, index);
	return 0;
}