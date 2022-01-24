#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_plane_state {int dummy; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct dpu_plane_state {int pending; int /*<<< orphan*/  multirect_mode; } ;
struct dpu_plane {TYPE_2__* pipe_hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* setup_multirect ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPU_SSPP_MULTIRECT_NONE ; 
 int /*<<< orphan*/  DPU_SSPP_RECT_SOLO ; 
 int /*<<< orphan*/  FUNC0 (struct drm_plane*) ; 
 scalar_t__ FUNC1 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dpu_plane* FUNC3 (struct drm_plane*) ; 
 struct dpu_plane_state* FUNC4 (struct drm_plane_state*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_plane *plane)
{
	struct dpu_plane *pdpu = FUNC3(plane);
	struct drm_plane_state *state = plane->state;
	struct dpu_plane_state *pstate = FUNC4(state);

	FUNC5(FUNC0(plane), FUNC1(plane),
				pstate->multirect_mode);

	pstate->pending = true;

	if (FUNC1(plane) &&
			pdpu->pipe_hw && pdpu->pipe_hw->ops.setup_multirect)
		pdpu->pipe_hw->ops.setup_multirect(pdpu->pipe_hw,
				DPU_SSPP_RECT_SOLO, DPU_SSPP_MULTIRECT_NONE);
}