#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct pci_dev {int dummy; } ;
struct TYPE_5__ {TYPE_3__* scratch; int /*<<< orphan*/  (* pte_encode ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;struct drm_i915_private* i915; } ;
struct i915_ggtt {TYPE_2__ vm; int /*<<< orphan*/  gsm; } ;
struct TYPE_4__ {struct pci_dev* pdev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
typedef  scalar_t__ phys_addr_t ;
struct TYPE_6__ {int /*<<< orphan*/  encode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_DMA32 ; 
 int /*<<< orphan*/  I915_CACHE_NONE ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct i915_ggtt *ggtt, u64 size)
{
	struct drm_i915_private *dev_priv = ggtt->vm.i915;
	struct pci_dev *pdev = dev_priv->drm.pdev;
	phys_addr_t phys_addr;
	int ret;

	/* For Modern GENs the PTEs and register space are split in the BAR */
	phys_addr = FUNC7(pdev, 0) + FUNC6(pdev, 0) / 2;

	/*
	 * On BXT+/CNL+ writes larger than 64 bit to the GTT pagetable range
	 * will be dropped. For WC mappings in general we have 64 byte burst
	 * writes when the WC buffer is flushed, so we can't use it, but have to
	 * resort to an uncached mapping. The WC issue is easily caught by the
	 * readback check when writing GTT PTE entries.
	 */
	if (FUNC2(dev_priv) || FUNC1(dev_priv) >= 10)
		ggtt->gsm = FUNC3(phys_addr, size);
	else
		ggtt->gsm = FUNC4(phys_addr, size);
	if (!ggtt->gsm) {
		FUNC0("Failed to map the ggtt page table\n");
		return -ENOMEM;
	}

	ret = FUNC9(&ggtt->vm, GFP_DMA32);
	if (ret) {
		FUNC0("Scratch setup failed\n");
		/* iounmap will also get called at remove, but meh */
		FUNC5(ggtt->gsm);
		return ret;
	}

	ggtt->vm.scratch[0].encode =
		ggtt->vm.pte_encode(FUNC8(&ggtt->vm.scratch[0]),
				    I915_CACHE_NONE, 0);

	return 0;
}