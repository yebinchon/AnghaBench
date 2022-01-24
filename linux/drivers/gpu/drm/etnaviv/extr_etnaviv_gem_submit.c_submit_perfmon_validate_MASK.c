#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct etnaviv_gem_submit_bo {TYPE_2__* obj; } ;
struct etnaviv_gem_submit {scalar_t__ nr_pmrs; TYPE_1__* pmrs; } ;
struct drm_etnaviv_gem_submit_pmr {scalar_t__ read_offset; int flags; int /*<<< orphan*/  sequence; int /*<<< orphan*/  signal; int /*<<< orphan*/  domain; int /*<<< orphan*/  read_idx; } ;
struct TYPE_6__ {int size; } ;
struct TYPE_5__ {TYPE_3__ base; } ;
struct TYPE_4__ {int flags; int offset; int /*<<< orphan*/  bo_vma; int /*<<< orphan*/  sequence; int /*<<< orphan*/  signal; int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int ETNA_PM_PROCESS_POST ; 
 int ETNA_PM_PROCESS_PRE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (struct drm_etnaviv_gem_submit_pmr const*,scalar_t__) ; 
 int FUNC3 (struct etnaviv_gem_submit*,int /*<<< orphan*/ ,struct etnaviv_gem_submit_bo**) ; 

__attribute__((used)) static int FUNC4(struct etnaviv_gem_submit *submit,
		u32 exec_state, const struct drm_etnaviv_gem_submit_pmr *pmrs)
{
	u32 i;

	for (i = 0; i < submit->nr_pmrs; i++) {
		const struct drm_etnaviv_gem_submit_pmr *r = pmrs + i;
		struct etnaviv_gem_submit_bo *bo;
		int ret;

		ret = FUNC3(submit, r->read_idx, &bo);
		if (ret)
			return ret;

		/* at offset 0 a sequence number gets stored used for userspace sync */
		if (r->read_offset == 0) {
			FUNC0("perfmon request: offset is 0");
			return -EINVAL;
		}

		if (r->read_offset >= bo->obj->base.size - sizeof(u32)) {
			FUNC0("perfmon request: offset %u outside object", i);
			return -EINVAL;
		}

		if (r->flags & ~(ETNA_PM_PROCESS_PRE | ETNA_PM_PROCESS_POST)) {
			FUNC0("perfmon request: flags are not valid");
			return -EINVAL;
		}

		if (FUNC2(r, exec_state)) {
			FUNC0("perfmon request: domain or signal not valid");
			return -EINVAL;
		}

		submit->pmrs[i].flags = r->flags;
		submit->pmrs[i].domain = r->domain;
		submit->pmrs[i].signal = r->signal;
		submit->pmrs[i].sequence = r->sequence;
		submit->pmrs[i].offset = r->read_offset;
		submit->pmrs[i].bo_vma = FUNC1(&bo->obj->base);
	}

	return 0;
}