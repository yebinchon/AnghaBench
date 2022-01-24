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
typedef  int /*<<< orphan*/  u64 ;
struct intel_iommu {int /*<<< orphan*/  cap; } ;
struct dmar_domain {int /*<<< orphan*/  iovad; } ;
struct device {int dummy; } ;
typedef  size_t phys_addr_t ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  size_t dma_addr_t ;

/* Variables and functions */
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 unsigned long DMA_ATTR_SKIP_CPU_SYNC ; 
 int DMA_BIDIRECTIONAL ; 
 int DMA_FROM_DEVICE ; 
 size_t DMA_MAPPING_ERROR ; 
 int DMA_NONE ; 
 int DMA_PTE_READ ; 
 int DMA_PTE_WRITE ; 
 int DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 unsigned long PAGE_SHIFT ; 
 size_t VTD_PAGE_SHIFT ; 
 int /*<<< orphan*/  VTD_PAGE_SIZE ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,size_t,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 struct intel_iommu* FUNC8 (struct dmar_domain*) ; 
 int FUNC9 (struct dmar_domain*,int /*<<< orphan*/ ,size_t,unsigned long,int) ; 
 struct dmar_domain* FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC12 (struct device*,struct dmar_domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  io_tlb_start ; 
 scalar_t__ FUNC13 (size_t) ; 
 int /*<<< orphan*/  FUNC14 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC15 (unsigned long) ; 
 void* FUNC16 (size_t) ; 
 size_t FUNC17 (struct device*,int /*<<< orphan*/ ,size_t,size_t,size_t,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (struct device*,size_t,size_t,size_t,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (struct device*,unsigned long,size_t,size_t) ; 

__attribute__((used)) static dma_addr_t
FUNC20(struct device *dev, phys_addr_t paddr, size_t size,
		  enum dma_data_direction dir, unsigned long attrs,
		  u64 dma_mask)
{
	size_t aligned_size = FUNC0(size, VTD_PAGE_SIZE);
	struct dmar_domain *domain;
	struct intel_iommu *iommu;
	unsigned long iova_pfn;
	unsigned long nrpages;
	phys_addr_t tlb_addr;
	int prot = 0;
	int ret;

	domain = FUNC10(dev);
	if (FUNC2(dir == DMA_NONE || !domain))
		return DMA_MAPPING_ERROR;

	iommu = FUNC8(domain);
	if (FUNC2(!iommu))
		return DMA_MAPPING_ERROR;

	nrpages = FUNC4(0, size);
	iova_pfn = FUNC12(dev, domain,
				    FUNC7(nrpages), dma_mask);
	if (!iova_pfn)
		return DMA_MAPPING_ERROR;

	/*
	 * Check if DMAR supports zero-length reads on write only
	 * mappings..
	 */
	if (dir == DMA_TO_DEVICE || dir == DMA_BIDIRECTIONAL ||
			!FUNC5(iommu->cap))
		prot |= DMA_PTE_READ;
	if (dir == DMA_FROM_DEVICE || dir == DMA_BIDIRECTIONAL)
		prot |= DMA_PTE_WRITE;

	/*
	 * If both the physical buffer start address and size are
	 * page aligned, we don't need to use a bounce page.
	 */
	if (!FUNC1(paddr | size, VTD_PAGE_SIZE)) {
		tlb_addr = FUNC17(dev,
				FUNC3(dev, io_tlb_start),
				paddr, size, aligned_size, dir, attrs);
		if (tlb_addr == DMA_MAPPING_ERROR) {
			goto swiotlb_error;
		} else {
			/* Cleanup the padding area. */
			void *padding_start = FUNC16(tlb_addr);
			size_t padding_size = aligned_size;

			if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
			    (dir == DMA_TO_DEVICE ||
			     dir == DMA_BIDIRECTIONAL)) {
				padding_start += size;
				padding_size -= size;
			}

			FUNC14(padding_start, 0, padding_size);
		}
	} else {
		tlb_addr = paddr;
	}

	ret = FUNC9(domain, FUNC15(iova_pfn),
				 tlb_addr >> VTD_PAGE_SHIFT, nrpages, prot);
	if (ret)
		goto mapping_error;

	FUNC19(dev, iova_pfn << PAGE_SHIFT, paddr, size);

	return (phys_addr_t)iova_pfn << PAGE_SHIFT;

mapping_error:
	if (FUNC13(tlb_addr))
		FUNC18(dev, tlb_addr, size,
					 aligned_size, dir, attrs);
swiotlb_error:
	FUNC11(&domain->iovad, iova_pfn, FUNC7(nrpages));
	FUNC6(dev, "Device bounce map: %zx@%llx dir %d --- failed\n",
		size, (unsigned long long)paddr, dir);

	return DMA_MAPPING_ERROR;
}