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
struct sg_table {int dummy; } ;
struct page {int dummy; } ;
struct fpga_manager {TYPE_1__* mops; } ;
struct fpga_image_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ write; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long PAGE_SIZE ; 
 int FUNC1 (struct fpga_manager*,struct fpga_image_info*,char const*,size_t) ; 
 int FUNC2 (struct fpga_manager*,struct fpga_image_info*,struct sg_table*) ; 
 scalar_t__ FUNC3 (void const*) ; 
 int /*<<< orphan*/  FUNC4 (struct page**) ; 
 struct page** FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 struct page* FUNC6 (void*) ; 
 char const* FUNC7 (char const*) ; 
 int FUNC8 (struct sg_table*,struct page**,int,char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sg_table*) ; 
 struct page* FUNC10 (void const*) ; 

__attribute__((used)) static int FUNC11(struct fpga_manager *mgr,
			     struct fpga_image_info *info,
			     const char *buf, size_t count)
{
	struct page **pages;
	struct sg_table sgt;
	const void *p;
	int nr_pages;
	int index;
	int rc;

	/*
	 * This is just a fast path if the caller has already created a
	 * contiguous kernel buffer and the driver doesn't require SG, non-SG
	 * drivers will still work on the slow path.
	 */
	if (mgr->mops->write)
		return FUNC1(mgr, info, buf, count);

	/*
	 * Convert the linear kernel pointer into a sg_table of pages for use
	 * by the driver.
	 */
	nr_pages = FUNC0((unsigned long)buf + count, PAGE_SIZE) -
		   (unsigned long)buf / PAGE_SIZE;
	pages = FUNC5(nr_pages, sizeof(struct page *), GFP_KERNEL);
	if (!pages)
		return -ENOMEM;

	p = buf - FUNC7(buf);
	for (index = 0; index < nr_pages; index++) {
		if (FUNC3(p))
			pages[index] = FUNC10(p);
		else
			pages[index] = FUNC6((void *)p);
		if (!pages[index]) {
			FUNC4(pages);
			return -EFAULT;
		}
		p += PAGE_SIZE;
	}

	/*
	 * The temporary pages list is used to code share the merging algorithm
	 * in sg_alloc_table_from_pages
	 */
	rc = FUNC8(&sgt, pages, index, FUNC7(buf),
				       count, GFP_KERNEL);
	FUNC4(pages);
	if (rc)
		return rc;

	rc = FUNC2(mgr, info, &sgt);
	FUNC9(&sgt);

	return rc;
}