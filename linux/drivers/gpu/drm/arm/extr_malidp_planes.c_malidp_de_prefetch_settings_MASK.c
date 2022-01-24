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
struct malidp_plane_state {int /*<<< orphan*/  mmu_prefetch_pgsize; int /*<<< orphan*/  mmu_prefetch_mode; } ;
struct malidp_plane {TYPE_1__* layer; } ;
struct TYPE_2__ {int /*<<< orphan*/  mmu_ctrl_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct malidp_plane*) ; 
 int /*<<< orphan*/  FUNC1 (struct malidp_plane_state*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct malidp_plane *mp,
					struct malidp_plane_state *ms)
{
	if (!mp->layer->mmu_ctrl_offset)
		return;

	/* get the page sizes supported by the MMU */
	ms->mmu_prefetch_pgsize = FUNC0(mp);
	ms->mmu_prefetch_mode  =
		FUNC1(ms, &ms->mmu_prefetch_pgsize);
}