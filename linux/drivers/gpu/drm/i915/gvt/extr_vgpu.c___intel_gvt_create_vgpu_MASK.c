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
struct intel_vgpu_creation_params {int /*<<< orphan*/  resolution; int /*<<< orphan*/  primary; int /*<<< orphan*/  weight; int /*<<< orphan*/  handle; int /*<<< orphan*/  fence_sz; int /*<<< orphan*/  high_gm_sz; int /*<<< orphan*/  low_gm_sz; } ;
struct TYPE_2__ {int /*<<< orphan*/  weight; } ;
struct intel_vgpu {int id; int /*<<< orphan*/  object_idr; int /*<<< orphan*/  page_track_tree; int /*<<< orphan*/  dmabuf_obj_list_head; int /*<<< orphan*/  dmabuf_lock; int /*<<< orphan*/  vgpu_lock; TYPE_1__ sched_ctl; struct intel_gvt* gvt; int /*<<< orphan*/  handle; } ;
struct intel_gvt {int /*<<< orphan*/  vgpu_idr; int /*<<< orphan*/  dev_priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct intel_vgpu* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GVT_MAX_VGPU ; 
 scalar_t__ IDLE_VGPU_IDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORT_D ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct intel_vgpu*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_vgpu*) ; 
 int FUNC10 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_vgpu*) ; 
 int FUNC12 (struct intel_vgpu*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct intel_vgpu*) ; 
 int FUNC14 (struct intel_vgpu*,struct intel_vgpu_creation_params*) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC17 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC18 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC19 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC20 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC21 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC22 (struct intel_vgpu*,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct intel_vgpu*,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct intel_vgpu*) ; 
 int FUNC25 (struct intel_vgpu*) ; 
 int FUNC26 (struct intel_vgpu*) ; 
 int FUNC27 (struct intel_vgpu*) ; 
 int FUNC28 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC31 (struct intel_vgpu*) ; 
 struct intel_vgpu* FUNC32 (int) ; 

__attribute__((used)) static struct intel_vgpu *FUNC33(struct intel_gvt *gvt,
		struct intel_vgpu_creation_params *param)
{
	struct intel_vgpu *vgpu;
	int ret;

	FUNC5("handle %llu low %llu MB high %llu MB fence %llu\n",
			param->handle, param->low_gm_sz, param->high_gm_sz,
			param->fence_sz);

	vgpu = FUNC32(sizeof(*vgpu));
	if (!vgpu)
		return FUNC0(-ENOMEM);

	ret = FUNC6(&gvt->vgpu_idr, vgpu, IDLE_VGPU_IDR + 1, GVT_MAX_VGPU,
		GFP_KERNEL);
	if (ret < 0)
		goto out_free_vgpu;

	vgpu->id = ret;
	vgpu->handle = param->handle;
	vgpu->gvt = gvt;
	vgpu->sched_ctl.weight = param->weight;
	FUNC29(&vgpu->vgpu_lock);
	FUNC29(&vgpu->dmabuf_lock);
	FUNC1(&vgpu->dmabuf_obj_list_head);
	FUNC2(&vgpu->page_track_tree, GFP_KERNEL);
	FUNC7(&vgpu->object_idr);
	FUNC22(vgpu, param->primary);

	ret = FUNC25(vgpu);
	if (ret)
		goto out_clean_idr;

	ret = FUNC14(vgpu, param);
	if (ret)
		goto out_clean_vgpu_mmio;

	FUNC30(vgpu);

	ret = FUNC10(vgpu);
	if (ret)
		goto out_clean_vgpu_resource;

	ret = FUNC24(vgpu);
	if (ret)
		goto out_detach_hypervisor_vgpu;

	ret = FUNC26(vgpu);
	if (ret)
		goto out_clean_gtt;

	ret = FUNC23(vgpu, param->resolution);
	if (ret)
		goto out_clean_opregion;

	ret = FUNC28(vgpu);
	if (ret)
		goto out_clean_display;

	ret = FUNC27(vgpu);
	if (ret)
		goto out_clean_submission;

	FUNC9(vgpu);

	ret = FUNC13(vgpu);
	if (ret)
		goto out_clean_sched_policy;

	/*TODO: add more platforms support */
	if (FUNC4(gvt->dev_priv) || FUNC3(gvt->dev_priv))
		ret = FUNC12(vgpu, PORT_D);
	if (ret)
		goto out_clean_sched_policy;

	return vgpu;

out_clean_sched_policy:
	FUNC19(vgpu);
out_clean_submission:
	FUNC20(vgpu);
out_clean_display:
	FUNC15(vgpu);
out_clean_opregion:
	FUNC18(vgpu);
out_clean_gtt:
	FUNC16(vgpu);
out_detach_hypervisor_vgpu:
	FUNC11(vgpu);
out_clean_vgpu_resource:
	FUNC21(vgpu);
out_clean_vgpu_mmio:
	FUNC17(vgpu);
out_clean_idr:
	FUNC8(&gvt->vgpu_idr, vgpu->id);
out_free_vgpu:
	FUNC31(vgpu);
	return FUNC0(ret);
}