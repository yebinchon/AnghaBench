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
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_fault {int /*<<< orphan*/  address; int /*<<< orphan*/  vma; } ;
struct page {int dummy; } ;
struct nouveau_drm {TYPE_3__* dmem; TYPE_1__* dev; } ;
struct migrate_vma {int* src; int* dst; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_5__ {scalar_t__ (* copy_func ) (struct nouveau_drm*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {TYPE_2__ migrate; } ;
struct TYPE_4__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  GFP_HIGHUSER ; 
 int MIGRATE_PFN_LOCKED ; 
 int MIGRATE_PFN_MIGRATE ; 
 int /*<<< orphan*/  NOUVEAU_APER_HOST ; 
 int /*<<< orphan*/  NOUVEAU_APER_VRAM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  VM_FAULT_SIGBUS ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct page* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 scalar_t__ FUNC10 (struct nouveau_drm*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static vm_fault_t FUNC11(struct nouveau_drm *drm,
		struct vm_fault *vmf, struct migrate_vma *args,
		dma_addr_t *dma_addr)
{
	struct device *dev = drm->dev->dev;
	struct page *dpage, *spage;

	spage = FUNC7(args->src[0]);
	if (!spage || !(args->src[0] & MIGRATE_PFN_MIGRATE))
		return 0;

	dpage = FUNC1(GFP_HIGHUSER, vmf->vma, vmf->address);
	if (!dpage)
		return VM_FAULT_SIGBUS;
	FUNC5(dpage);

	*dma_addr = FUNC2(dev, dpage, 0, PAGE_SIZE, DMA_BIDIRECTIONAL);
	if (FUNC3(dev, *dma_addr))
		goto error_free_page;

	if (drm->dmem->migrate.copy_func(drm, 1, NOUVEAU_APER_HOST, *dma_addr,
			NOUVEAU_APER_VRAM, FUNC8(spage)))
		goto error_dma_unmap;

	args->dst[0] = FUNC6(FUNC9(dpage)) | MIGRATE_PFN_LOCKED;
	return 0;

error_dma_unmap:
	FUNC4(dev, *dma_addr, PAGE_SIZE, DMA_BIDIRECTIONAL);
error_free_page:
	FUNC0(dpage);
	return VM_FAULT_SIGBUS;
}