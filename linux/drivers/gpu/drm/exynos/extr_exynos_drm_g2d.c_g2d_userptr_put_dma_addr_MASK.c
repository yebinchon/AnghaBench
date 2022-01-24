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
struct g2d_data {int /*<<< orphan*/  drm_dev; } ;
struct g2d_cmdlist_userptr {struct g2d_cmdlist_userptr* sgt; int /*<<< orphan*/  list; int /*<<< orphan*/  out_of_list; int /*<<< orphan*/  vec; int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; scalar_t__ in_pool; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (struct page**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct page** FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct g2d_cmdlist_userptr*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct g2d_cmdlist_userptr*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct g2d_data *g2d,
					void *obj,
					bool force)
{
	struct g2d_cmdlist_userptr *g2d_userptr = obj;
	struct page **pages;

	if (!obj)
		return;

	if (force)
		goto out;

	FUNC1(&g2d_userptr->refcount);

	if (FUNC2(&g2d_userptr->refcount) > 0)
		return;

	if (g2d_userptr->in_pool)
		return;

out:
	FUNC3(FUNC12(g2d->drm_dev), g2d_userptr->sgt->sgl,
			g2d_userptr->sgt->nents, DMA_BIDIRECTIONAL);

	pages = FUNC6(g2d_userptr->vec);
	if (!FUNC0(pages)) {
		int i;

		for (i = 0; i < FUNC4(g2d_userptr->vec); i++)
			FUNC10(pages[i]);
	}
	FUNC9(g2d_userptr->vec);
	FUNC5(g2d_userptr->vec);

	if (!g2d_userptr->out_of_list)
		FUNC8(&g2d_userptr->list);

	FUNC11(g2d_userptr->sgt);
	FUNC7(g2d_userptr->sgt);
	FUNC7(g2d_userptr);
}