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
struct msm_gem_address_space {int dummy; } ;
struct drm_plane {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct dpu_plane_state {int /*<<< orphan*/  multirect_index; } ;
struct dpu_plane {TYPE_3__* pipe_hw; int /*<<< orphan*/  base; } ;
struct TYPE_4__ {struct msm_gem_address_space* aspace; } ;
struct dpu_kms {TYPE_1__ base; } ;
struct dpu_hw_pipe_cfg {int /*<<< orphan*/  layout; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* setup_sourceaddress ) (TYPE_3__*,struct dpu_hw_pipe_cfg*,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {TYPE_2__ ops; int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_plane*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dpu_plane*,char*,int) ; 
 int EAGAIN ; 
 struct dpu_kms* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct msm_gem_address_space*,struct drm_framebuffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,struct dpu_hw_pipe_cfg*,int /*<<< orphan*/ ) ; 
 struct dpu_plane* FUNC5 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct drm_plane *plane,
		struct dpu_plane_state *pstate,
		struct dpu_hw_pipe_cfg *pipe_cfg,
		struct drm_framebuffer *fb)
{
	struct dpu_plane *pdpu = FUNC5(plane);
	struct dpu_kms *kms = FUNC2(&pdpu->base);
	struct msm_gem_address_space *aspace = kms->base.aspace;
	int ret;

	ret = FUNC3(aspace, fb, &pipe_cfg->layout);
	if (ret == -EAGAIN)
		FUNC0(pdpu, "not updating same src addrs\n");
	else if (ret)
		FUNC1(pdpu, "failed to get format layout, %d\n", ret);
	else if (pdpu->pipe_hw->ops.setup_sourceaddress) {
		FUNC6(pdpu->pipe_hw->idx,
					    &pipe_cfg->layout,
					    pstate->multirect_index);
		pdpu->pipe_hw->ops.setup_sourceaddress(pdpu->pipe_hw, pipe_cfg,
						pstate->multirect_index);
	}
}