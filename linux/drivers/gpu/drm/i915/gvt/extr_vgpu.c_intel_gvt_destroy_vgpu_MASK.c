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
struct intel_vgpu {int /*<<< orphan*/  id; int /*<<< orphan*/  vgpu_lock; int /*<<< orphan*/  active; struct intel_gvt* gvt; } ;
struct intel_gvt {int /*<<< orphan*/  lock; int /*<<< orphan*/  vgpu_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_vgpu*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct intel_vgpu*) ; 

void FUNC19(struct intel_vgpu *vgpu)
{
	struct intel_gvt *gvt = vgpu->gvt;

	FUNC16(&vgpu->vgpu_lock);

	FUNC0(vgpu->active, "vGPU is still active!\n");

	FUNC4(vgpu);
	FUNC11(vgpu);
	FUNC12(vgpu);
	FUNC7(vgpu);
	FUNC10(vgpu);
	FUNC15(vgpu, true);
	FUNC8(vgpu);
	FUNC5(vgpu);
	FUNC14(vgpu);
	FUNC9(vgpu);
	FUNC13(vgpu);
	FUNC17(&vgpu->vgpu_lock);

	FUNC16(&gvt->lock);
	FUNC2(&gvt->vgpu_idr, vgpu->id);
	if (FUNC1(&gvt->vgpu_idr))
		FUNC3(gvt);
	FUNC6(gvt);
	FUNC17(&gvt->lock);

	FUNC18(vgpu);
}