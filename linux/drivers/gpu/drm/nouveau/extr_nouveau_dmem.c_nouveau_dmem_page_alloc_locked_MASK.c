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
struct page {int dummy; } ;
struct nouveau_drm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct nouveau_drm*,int,unsigned long*) ; 
 struct page* FUNC3 (unsigned long) ; 

__attribute__((used)) static struct page *
FUNC4(struct nouveau_drm *drm)
{
	unsigned long pfns[1];
	struct page *page;
	int ret;

	/* FIXME stop all the miss-match API ... */
	ret = FUNC2(drm, 1, pfns);
	if (ret)
		return NULL;

	page = FUNC3(pfns[0]);
	FUNC0(page);
	FUNC1(page);
	return page;
}