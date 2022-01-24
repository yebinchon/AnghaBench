#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct msm_gpu {TYPE_3__* aspace; int /*<<< orphan*/  memptrs_bo; int /*<<< orphan*/ ** rb; int /*<<< orphan*/  active_list; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_2__* mmu; } ;
struct TYPE_7__ {TYPE_1__* funcs; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* detach ) (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC9(struct msm_gpu *gpu)
{
	int i;

	FUNC1("%s", gpu->name);

	FUNC3(!FUNC4(&gpu->active_list));

	for (i = 0; i < FUNC0(gpu->rb); i++) {
		FUNC7(gpu->rb[i]);
		gpu->rb[i] = NULL;
	}

	FUNC6(gpu->memptrs_bo, gpu->aspace, false);

	if (!FUNC2(gpu->aspace)) {
		gpu->aspace->mmu->funcs->detach(gpu->aspace->mmu,
			NULL, 0);
		FUNC5(gpu->aspace);
	}
}