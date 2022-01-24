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
struct malidp_plane_state {size_t mmu_prefetch_mode; int /*<<< orphan*/  mmu_prefetch_pgsize; int /*<<< orphan*/  n_planes; int /*<<< orphan*/  format; int /*<<< orphan*/  rotmem_size; } ;
struct drm_printer {int dummy; } ;
struct drm_plane_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_printer*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * prefetch_mode_names ; 
 struct malidp_plane_state* FUNC1 (struct drm_plane_state const*) ; 

__attribute__((used)) static void FUNC2(struct drm_printer *p,
					    const struct drm_plane_state *state)
{
	struct malidp_plane_state *ms = FUNC1(state);

	FUNC0(p, "\trotmem_size=%u\n", ms->rotmem_size);
	FUNC0(p, "\tformat_id=%u\n", ms->format);
	FUNC0(p, "\tn_planes=%u\n", ms->n_planes);
	FUNC0(p, "\tmmu_prefetch_mode=%s\n",
		   prefetch_mode_names[ms->mmu_prefetch_mode]);
	FUNC0(p, "\tmmu_prefetch_pgsize=%d\n", ms->mmu_prefetch_pgsize);
}