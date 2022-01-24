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
struct amdgpu_sa_manager {TYPE_1__* hole; } ;
struct TYPE_2__ {struct TYPE_2__* prev; } ;
struct amdgpu_sa_bo {int /*<<< orphan*/  fence; TYPE_1__ flist; TYPE_1__ olist; struct amdgpu_sa_manager* manager; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_sa_bo*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_sa_bo *sa_bo)
{
	struct amdgpu_sa_manager *sa_manager = sa_bo->manager;
	if (sa_manager->hole == &sa_bo->olist) {
		sa_manager->hole = sa_bo->olist.prev;
	}
	FUNC2(&sa_bo->olist);
	FUNC2(&sa_bo->flist);
	FUNC0(sa_bo->fence);
	FUNC1(sa_bo);
}