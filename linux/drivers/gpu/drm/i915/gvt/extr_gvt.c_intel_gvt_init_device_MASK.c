#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct intel_vgpu {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  mmio_context_lock; } ;
struct intel_gvt {int /*<<< orphan*/  vgpu_idr; struct intel_vgpu* idle_vgpu; struct drm_i915_private* dev_priv; int /*<<< orphan*/  sched_lock; int /*<<< orphan*/  lock; TYPE_1__ scheduler; } ;
struct TYPE_7__ {TYPE_2__* pdev; } ;
struct drm_i915_private {TYPE_3__ drm; struct intel_gvt* gvt; } ;
struct TYPE_8__ {int initialized; int /*<<< orphan*/ * dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct intel_vgpu*) ; 
 int FUNC1 (struct intel_vgpu*) ; 
 scalar_t__ FUNC2 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_gvt*) ; 
 int FUNC9 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_gvt*) ; 
 struct intel_vgpu* FUNC17 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC18 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC19 (struct intel_gvt*) ; 
 TYPE_4__ intel_gvt_host ; 
 int FUNC20 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC21 (struct intel_gvt*) ; 
 int FUNC22 (struct intel_gvt*) ; 
 int FUNC23 (struct intel_gvt*) ; 
 int FUNC24 (struct intel_gvt*) ; 
 int FUNC25 (struct intel_gvt*) ; 
 int FUNC26 (struct intel_gvt*) ; 
 int FUNC27 (struct intel_gvt*) ; 
 int FUNC28 (struct intel_gvt*) ; 
 int FUNC29 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC30 (struct intel_gvt*) ; 
 struct intel_gvt* FUNC31 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 

int FUNC34(struct drm_i915_private *dev_priv)
{
	struct intel_gvt *gvt;
	struct intel_vgpu *vgpu;
	int ret;

	if (FUNC2(dev_priv->gvt))
		return -EEXIST;

	gvt = FUNC31(sizeof(struct intel_gvt), GFP_KERNEL);
	if (!gvt)
		return -ENOMEM;

	FUNC4("init gvt device\n");

	FUNC7(&gvt->vgpu_idr);
	FUNC33(&gvt->scheduler.mmio_context_lock);
	FUNC32(&gvt->lock);
	FUNC32(&gvt->sched_lock);
	gvt->dev_priv = dev_priv;

	FUNC8(gvt);

	ret = FUNC29(gvt);
	if (ret)
		goto out_clean_idr;

	FUNC21(gvt);

	ret = FUNC28(gvt);
	if (ret)
		goto out_clean_mmio_info;

	ret = FUNC23(gvt);
	if (ret)
		goto out_free_firmware;

	ret = FUNC22(gvt);
	if (ret)
		goto out_clean_irq;

	ret = FUNC27(gvt);
	if (ret)
		goto out_clean_gtt;

	ret = FUNC24(gvt);
	if (ret)
		goto out_clean_workload_scheduler;

	ret = FUNC20(gvt);
	if (ret)
		goto out_clean_sched_policy;

	ret = FUNC9(gvt);
	if (ret)
		goto out_clean_cmd_parser;

	ret = FUNC26(gvt);
	if (ret)
		goto out_clean_thread;

	ret = FUNC25(gvt);
	if (ret == false) {
		FUNC5("failed to init vgpu type groups: %d\n", ret);
		goto out_clean_types;
	}

	vgpu = FUNC17(gvt);
	if (FUNC0(vgpu)) {
		ret = FUNC1(vgpu);
		FUNC5("failed to create idle vgpu\n");
		goto out_clean_types;
	}
	gvt->idle_vgpu = vgpu;

	FUNC18(gvt);

	FUNC4("gvt device initialization is done\n");
	dev_priv->gvt = gvt;
	intel_gvt_host.dev = &dev_priv->drm.pdev->dev;
	intel_gvt_host.initialized = true;
	return 0;

out_clean_types:
	FUNC15(gvt);
out_clean_thread:
	FUNC3(gvt);
out_clean_cmd_parser:
	FUNC10(gvt);
out_clean_sched_policy:
	FUNC14(gvt);
out_clean_workload_scheduler:
	FUNC16(gvt);
out_clean_gtt:
	FUNC11(gvt);
out_clean_irq:
	FUNC12(gvt);
out_free_firmware:
	FUNC19(gvt);
out_clean_mmio_info:
	FUNC13(gvt);
out_clean_idr:
	FUNC6(&gvt->vgpu_idr);
	FUNC30(gvt);
	return ret;
}