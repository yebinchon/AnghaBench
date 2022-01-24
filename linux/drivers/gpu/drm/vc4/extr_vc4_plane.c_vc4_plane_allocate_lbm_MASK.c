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
struct TYPE_6__ {scalar_t__ size; int /*<<< orphan*/  start; int /*<<< orphan*/  allocated; } ;
struct vc4_plane_state {size_t lbm_offset; TYPE_3__ lbm; int /*<<< orphan*/ * dlist; } ;
struct vc4_dev {TYPE_2__* hvs; } ;
struct drm_plane_state {TYPE_1__* plane; } ;
struct TYPE_5__ {int /*<<< orphan*/  mm_lock; int /*<<< orphan*/  lbm_mm; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vc4_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 struct vc4_plane_state* FUNC6 (struct drm_plane_state*) ; 
 scalar_t__ FUNC7 (struct drm_plane_state*) ; 

__attribute__((used)) static int FUNC8(struct drm_plane_state *state)
{
	struct vc4_dev *vc4 = FUNC5(state->plane->dev);
	struct vc4_plane_state *vc4_state = FUNC6(state);
	unsigned long irqflags;
	u32 lbm_size;

	lbm_size = FUNC7(state);
	if (!lbm_size)
		return 0;

	if (FUNC0(!vc4_state->lbm_offset))
		return -EINVAL;

	/* Allocate the LBM memory that the HVS will use for temporary
	 * storage due to our scaling/format conversion.
	 */
	if (!vc4_state->lbm.allocated) {
		int ret;

		FUNC3(&vc4->hvs->mm_lock, irqflags);
		ret = FUNC2(&vc4->hvs->lbm_mm,
						 &vc4_state->lbm,
						 lbm_size, 32, 0, 0);
		FUNC4(&vc4->hvs->mm_lock, irqflags);

		if (ret)
			return ret;
	} else {
		FUNC1(lbm_size != vc4_state->lbm.size);
	}

	vc4_state->dlist[vc4_state->lbm_offset] = vc4_state->lbm.start;

	return 0;
}