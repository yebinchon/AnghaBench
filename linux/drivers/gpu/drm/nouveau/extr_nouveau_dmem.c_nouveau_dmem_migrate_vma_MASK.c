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
struct vm_area_struct {int dummy; } ;
struct nouveau_drm {int dummy; } ;
struct migrate_vma {unsigned long start; unsigned long end; int /*<<< orphan*/ * src; int /*<<< orphan*/ * dst; scalar_t__ cpages; struct vm_area_struct* vma; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  SG_MAX_SINGLE_ALLOC ; 
 void* FUNC0 (unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned long,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct migrate_vma*) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_drm*,struct migrate_vma*,int /*<<< orphan*/ *) ; 

int
FUNC6(struct nouveau_drm *drm,
			 struct vm_area_struct *vma,
			 unsigned long start,
			 unsigned long end)
{
	unsigned long npages = (end - start) >> PAGE_SHIFT;
	unsigned long max = FUNC4(SG_MAX_SINGLE_ALLOC, npages);
	dma_addr_t *dma_addrs;
	struct migrate_vma args = {
		.vma		= vma,
		.start		= start,
	};
	unsigned long c, i;
	int ret = -ENOMEM;

	args.src = FUNC0(max, sizeof(args.src), GFP_KERNEL);
	if (!args.src)
		goto out;
	args.dst = FUNC0(max, sizeof(args.dst), GFP_KERNEL);
	if (!args.dst)
		goto out_free_src;

	dma_addrs = FUNC2(max, sizeof(*dma_addrs), GFP_KERNEL);
	if (!dma_addrs)
		goto out_free_dst;

	for (i = 0; i < npages; i += c) {
		c = FUNC4(SG_MAX_SINGLE_ALLOC, npages);
		args.end = start + (c << PAGE_SHIFT);
		ret = FUNC3(&args);
		if (ret)
			goto out_free_dma;

		if (args.cpages)
			FUNC5(drm, &args, dma_addrs);
		args.start = args.end;
	}

	ret = 0;
out_free_dma:
	FUNC1(dma_addrs);
out_free_dst:
	FUNC1(args.dst);
out_free_src:
	FUNC1(args.src);
out:
	return ret;
}