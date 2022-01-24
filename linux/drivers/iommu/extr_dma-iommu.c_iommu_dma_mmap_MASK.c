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
struct vm_area_struct {unsigned long vm_pgoff; int /*<<< orphan*/  vm_page_prot; scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct page {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DMA_REMAP ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (size_t) ; 
 unsigned long PAGE_SHIFT ; 
 int FUNC2 (struct page**,size_t,struct vm_area_struct*) ; 
 struct page** FUNC3 (void*) ; 
 scalar_t__ FUNC4 (struct device*,struct vm_area_struct*,void*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC6 (void*) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct vm_area_struct*,scalar_t__,unsigned long,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 unsigned long FUNC10 (struct vm_area_struct*) ; 
 unsigned long FUNC11 (void*) ; 

__attribute__((used)) static int FUNC12(struct device *dev, struct vm_area_struct *vma,
		void *cpu_addr, dma_addr_t dma_addr, size_t size,
		unsigned long attrs)
{
	unsigned long nr_pages = FUNC1(size) >> PAGE_SHIFT;
	unsigned long pfn, off = vma->vm_pgoff;
	int ret;

	vma->vm_page_prot = FUNC5(dev, vma->vm_page_prot, attrs);

	if (FUNC4(dev, vma, cpu_addr, size, &ret))
		return ret;

	if (off >= nr_pages || FUNC10(vma) > nr_pages - off)
		return -ENXIO;

	if (FUNC0(CONFIG_DMA_REMAP) && FUNC6(cpu_addr)) {
		struct page **pages = FUNC3(cpu_addr);

		if (pages)
			return FUNC2(pages, size, vma);
		pfn = FUNC11(cpu_addr);
	} else {
		pfn = FUNC7(FUNC9(cpu_addr));
	}

	return FUNC8(vma, vma->vm_start, pfn + off,
			       vma->vm_end - vma->vm_start,
			       vma->vm_page_prot);
}