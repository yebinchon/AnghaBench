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
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct drm_plane {TYPE_3__ base; } ;
struct dpu_vbif_set_qos_params {int /*<<< orphan*/  clk_ctrl; int /*<<< orphan*/  is_rt; int /*<<< orphan*/  xin_id; int /*<<< orphan*/  vbif_idx; scalar_t__ num; } ;
struct dpu_plane {int /*<<< orphan*/  is_rt_pipe; TYPE_2__* pipe_hw; } ;
struct dpu_kms {int dummy; } ;
typedef  int /*<<< orphan*/  qos_params ;
struct TYPE_5__ {scalar_t__ idx; TYPE_1__* cap; } ;
struct TYPE_4__ {int /*<<< orphan*/  xin_id; int /*<<< orphan*/  clk_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SSPP_VIG0 ; 
 int /*<<< orphan*/  VBIF_RT ; 
 struct dpu_kms* FUNC1 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpu_kms*,struct dpu_vbif_set_qos_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpu_vbif_set_qos_params*,int /*<<< orphan*/ ,int) ; 
 struct dpu_plane* FUNC4 (struct drm_plane*) ; 

__attribute__((used)) static void FUNC5(struct drm_plane *plane)
{
	struct dpu_plane *pdpu = FUNC4(plane);
	struct dpu_vbif_set_qos_params qos_params;
	struct dpu_kms *dpu_kms = FUNC1(plane);

	FUNC3(&qos_params, 0, sizeof(qos_params));
	qos_params.vbif_idx = VBIF_RT;
	qos_params.clk_ctrl = pdpu->pipe_hw->cap->clk_ctrl;
	qos_params.xin_id = pdpu->pipe_hw->cap->xin_id;
	qos_params.num = pdpu->pipe_hw->idx - SSPP_VIG0;
	qos_params.is_rt = pdpu->is_rt_pipe;

	FUNC0("plane%d pipe:%d vbif:%d xin:%d rt:%d, clk_ctrl:%d\n",
			plane->base.id, qos_params.num,
			qos_params.vbif_idx,
			qos_params.xin_id, qos_params.is_rt,
			qos_params.clk_ctrl);

	FUNC2(dpu_kms, &qos_params);
}