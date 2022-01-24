#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  sgl; } ;
struct msc {unsigned long nr_pages; TYPE_2__ single_sgt; int /*<<< orphan*/  base_addr; int /*<<< orphan*/  base; } ;
struct TYPE_7__ {TYPE_1__* parent; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int GFP_DMA32 ; 
 int GFP_KERNEL ; 
 unsigned long PAGE_SHIFT ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct page*,unsigned int) ; 
 struct page* FUNC1 (int,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned long) ; 
 TYPE_4__* FUNC4 (struct msc*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int FUNC6 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,unsigned int) ; 

__attribute__((used)) static int FUNC11(struct msc *msc, unsigned long size)
{
	unsigned long nr_pages = size >> PAGE_SHIFT;
	unsigned int order = FUNC3(size);
	struct page *page;
	int ret;

	if (!size)
		return 0;

	ret = FUNC6(&msc->single_sgt, 1, GFP_KERNEL);
	if (ret)
		goto err_out;

	ret = -ENOMEM;
	page = FUNC1(GFP_KERNEL | __GFP_ZERO | GFP_DMA32, order);
	if (!page)
		goto err_free_sgt;

	FUNC10(page, order);
	FUNC9(msc->single_sgt.sgl, FUNC5(page), size);

	ret = FUNC2(FUNC4(msc)->parent->parent, msc->single_sgt.sgl, 1,
			 DMA_FROM_DEVICE);
	if (ret < 0)
		goto err_free_pages;

	msc->nr_pages = nr_pages;
	msc->base = FUNC5(page);
	msc->base_addr = FUNC7(msc->single_sgt.sgl);

	return 0;

err_free_pages:
	FUNC0(page, order);

err_free_sgt:
	FUNC8(&msc->single_sgt);

err_out:
	return ret;
}