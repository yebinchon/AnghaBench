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
struct TYPE_3__ {int /*<<< orphan*/  low_gm_node; } ;
struct intel_vgpu {TYPE_1__ gm; int /*<<< orphan*/  id; struct intel_gvt* gvt; } ;
struct intel_gvt {struct drm_i915_private* dev_priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_2__ drm; } ;

/* Variables and functions */
 int FUNC0 (struct intel_vgpu*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_vgpu*) ; 

__attribute__((used)) static int FUNC9(struct intel_vgpu *vgpu)
{
	struct intel_gvt *gvt = vgpu->gvt;
	struct drm_i915_private *dev_priv = gvt->dev_priv;
	int ret;

	ret = FUNC0(vgpu, false);
	if (ret)
		return ret;

	ret = FUNC0(vgpu, true);
	if (ret)
		goto out_free_aperture;

	FUNC2("vgpu%d: alloc low GM start %llx size %llx\n", vgpu->id,
		     FUNC5(vgpu), FUNC6(vgpu));

	FUNC2("vgpu%d: alloc high GM start %llx size %llx\n", vgpu->id,
		     FUNC7(vgpu), FUNC8(vgpu));

	return 0;
out_free_aperture:
	FUNC3(&dev_priv->drm.struct_mutex);
	FUNC1(&vgpu->gm.low_gm_node);
	FUNC4(&dev_priv->drm.struct_mutex);
	return ret;
}