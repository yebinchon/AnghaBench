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
typedef  int u64 ;
struct nvkm_vmm_page {unsigned long long shift; } ;
struct nvkm_vmm {TYPE_1__* func; } ;
struct TYPE_2__ {struct nvkm_vmm_page* page; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long long) ; 
 int FUNC2 (struct nvkm_vmm*,struct nvkm_vmm_page const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_vmm*,struct nvkm_vmm_page const*,int,int) ; 

__attribute__((used)) static int
FUNC4(struct nvkm_vmm *vmm, u64 addr, u64 size, bool ref)
{
	const struct nvkm_vmm_page *page = vmm->func->page;
	int m = 0, i;
	u64 start = addr;
	u64 block;

	while (size) {
		/* Limit maximum page size based on remaining size. */
		while (size < (1ULL << page[m].shift))
			m++;
		i = m;

		/* Find largest page size suitable for alignment. */
		while (!FUNC1(addr, 1ULL << page[i].shift))
			i++;

		/* Determine number of PTEs at this page size. */
		if (i != m) {
			/* Limited to alignment boundary of next page size. */
			u64 next = 1ULL << page[i - 1].shift;
			u64 part = FUNC0(addr, next) - addr;
			if (size - part >= next)
				block = (part >> page[i].shift) << page[i].shift;
			else
				block = (size >> page[i].shift) << page[i].shift;
		} else {
			block = (size >> page[i].shift) << page[i].shift;
		}

		/* Perform operation. */
		if (ref) {
			int ret = FUNC2(vmm, &page[i], addr, block);
			if (ret) {
				if ((size = addr - start))
					FUNC4(vmm, start, size, false);
				return ret;
			}
		} else {
			FUNC3(vmm, &page[i], addr, block);
		}

		size -= block;
		addr += block;
	}

	return 0;
}