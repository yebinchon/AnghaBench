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
struct nouveau_drm {TYPE_1__* dmem; } ;
struct nouveau_dmem_chunk {unsigned long pfn_first; int /*<<< orphan*/  lock; int /*<<< orphan*/  bitmap; int /*<<< orphan*/  callocated; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 unsigned long DMEM_CHUNK_NPAGES ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct nouveau_drm*) ; 
 struct nouveau_dmem_chunk* FUNC6 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct nouveau_drm *drm,
			 unsigned long npages,
			 unsigned long *pages)
{
	struct nouveau_dmem_chunk *chunk;
	unsigned long c;
	int ret;

	FUNC2(pages, 0xff, npages * sizeof(*pages));

	FUNC3(&drm->dmem->mutex);
	for (c = 0; c < npages;) {
		unsigned long i;

		chunk = FUNC6(drm);
		if (chunk == NULL) {
			FUNC4(&drm->dmem->mutex);
			ret = FUNC5(drm);
			if (ret) {
				if (c)
					return 0;
				return ret;
			}
			FUNC3(&drm->dmem->mutex);
			continue;
		}

		FUNC8(&chunk->lock);
		i = FUNC0(chunk->bitmap, DMEM_CHUNK_NPAGES);
		while (i < DMEM_CHUNK_NPAGES && c < npages) {
			pages[c] = chunk->pfn_first + i;
			FUNC7(i, chunk->bitmap);
			chunk->callocated++;
			c++;

			i = FUNC1(chunk->bitmap,
					DMEM_CHUNK_NPAGES, i);
		}
		FUNC9(&chunk->lock);
	}
	FUNC4(&drm->dmem->mutex);

	return 0;
}