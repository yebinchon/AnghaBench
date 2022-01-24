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
struct amdgpu_sa_manager {int /*<<< orphan*/ * hole; } ;
struct amdgpu_sa_bo {unsigned int soffset; unsigned int eoffset; int /*<<< orphan*/  olist; int /*<<< orphan*/  flist; struct amdgpu_sa_manager* manager; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct amdgpu_sa_manager*) ; 
 unsigned int FUNC2 (struct amdgpu_sa_manager*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct amdgpu_sa_manager *sa_manager,
				   struct amdgpu_sa_bo *sa_bo,
				   unsigned size, unsigned align)
{
	unsigned soffset, eoffset, wasted;

	soffset = FUNC2(sa_manager);
	eoffset = FUNC1(sa_manager);
	wasted = (align - (soffset % align)) % align;

	if ((eoffset - soffset) >= (size + wasted)) {
		soffset += wasted;

		sa_bo->manager = sa_manager;
		sa_bo->soffset = soffset;
		sa_bo->eoffset = soffset + size;
		FUNC3(&sa_bo->olist, sa_manager->hole);
		FUNC0(&sa_bo->flist);
		sa_manager->hole = &sa_bo->olist;
		return true;
	}
	return false;
}