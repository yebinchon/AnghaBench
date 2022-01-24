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
typedef  int u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct page {int dummy; } ;
struct TYPE_6__ {TYPE_2__* device; } ;
struct nvkm_mmu {int dma_bits; TYPE_3__ subdev; TYPE_1__* type; } ;
struct nvkm_memory {int dummy; } ;
struct nvkm_mem {int target; int pages; struct page** mem; int /*<<< orphan*/ * dma; struct nvkm_memory memory; int /*<<< orphan*/  sgl; struct nvkm_mmu* mmu; } ;
struct nvif_mem_ram_vn {int dummy; } ;
struct nvif_mem_ram_v0 {int /*<<< orphan*/  sgl; int /*<<< orphan*/ * dma; } ;
struct device {int dummy; } ;
typedef  int gfp_t ;
typedef  enum nvkm_memory_target { ____Placeholder_nvkm_memory_target } nvkm_memory_target ;
struct TYPE_5__ {struct device* dev; } ;
struct TYPE_4__ {int type; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int GFP_DMA32 ; 
 int GFP_HIGHUSER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GFP_USER ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int NVKM_MEM_COHERENT ; 
 int NVKM_MEM_TARGET_HOST ; 
 int NVKM_MEM_TARGET_NCOH ; 
 int NVKM_MEM_UNCACHED ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_mem*) ; 
 void* FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 struct nvkm_mem* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,void**,int /*<<< orphan*/ *,struct nvif_mem_ram_v0,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int,void**,int /*<<< orphan*/ *,struct nvif_mem_ram_vn) ; 
 int /*<<< orphan*/  nvkm_mem_dma ; 
 int /*<<< orphan*/  nvkm_mem_sgl ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct nvkm_memory*) ; 

__attribute__((used)) static int
FUNC12(struct nvkm_mmu *mmu, int type, u8 page, u64 size,
		  void *argv, u32 argc, struct nvkm_memory **pmemory)
{
	struct device *dev = mmu->subdev.device->dev;
	union {
		struct nvif_mem_ram_vn vn;
		struct nvif_mem_ram_v0 v0;
	} *args = argv;
	int ret = -ENOSYS;
	enum nvkm_memory_target target;
	struct nvkm_mem *mem;
	gfp_t gfp = GFP_USER | __GFP_ZERO;

	if ( (mmu->type[type].type & NVKM_MEM_COHERENT) &&
	    !(mmu->type[type].type & NVKM_MEM_UNCACHED))
		target = NVKM_MEM_TARGET_HOST;
	else
		target = NVKM_MEM_TARGET_NCOH;

	if (page != PAGE_SHIFT)
		return -EINVAL;

	if (!(mem = FUNC8(sizeof(*mem), GFP_KERNEL)))
		return -ENOMEM;
	mem->target = target;
	mem->mmu = mmu;
	*pmemory = &mem->memory;

	if (!(ret = FUNC9(ret, &argv, &argc, args->v0, 0, 0, false))) {
		if (args->v0.dma) {
			FUNC11(&nvkm_mem_dma, &mem->memory);
			mem->dma = args->v0.dma;
		} else {
			FUNC11(&nvkm_mem_sgl, &mem->memory);
			mem->sgl = args->v0.sgl;
		}

		if (!FUNC1(size, PAGE_SIZE))
			return -EINVAL;
		mem->pages = size >> PAGE_SHIFT;
		return 0;
	} else
	if ( (ret = FUNC10(ret, &argv, &argc, args->vn))) {
		FUNC6(mem);
		return ret;
	}

	FUNC11(&nvkm_mem_dma, &mem->memory);
	size = FUNC0(size, PAGE_SIZE) >> PAGE_SHIFT;

	if (!(mem->mem = FUNC7(size, sizeof(*mem->mem), GFP_KERNEL)))
		return -ENOMEM;
	if (!(mem->dma = FUNC7(size, sizeof(*mem->dma), GFP_KERNEL)))
		return -ENOMEM;

	if (mmu->dma_bits > 32)
		gfp |= GFP_HIGHUSER;
	else
		gfp |= GFP_DMA32;

	for (mem->pages = 0; size; size--, mem->pages++) {
		struct page *p = FUNC3(gfp);
		if (!p)
			return -ENOMEM;

		mem->dma[mem->pages] = FUNC4(mmu->subdev.device->dev,
						    p, 0, PAGE_SIZE,
						    DMA_BIDIRECTIONAL);
		if (FUNC5(dev, mem->dma[mem->pages])) {
			FUNC2(p);
			return -ENOMEM;
		}

		mem->mem[mem->pages] = p;
	}

	return 0;
}