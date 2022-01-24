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
struct intel_vgpu {TYPE_1__* gvt; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {struct drm_i915_private* dev_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_vgpu*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 unsigned int FUNC4 (unsigned int) ; 
 int FUNC5 (struct intel_vgpu*,unsigned int,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_vgpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_vgpu*,unsigned int,void*,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct intel_vgpu *vgpu, unsigned int off,
		void *p_data, unsigned int bytes)
{
	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
	unsigned int fence_num = FUNC4(off);
	int ret;

	ret = FUNC5(vgpu, fence_num, p_data, bytes);
	if (ret)
		return ret;
	FUNC7(vgpu, off, p_data, bytes);

	FUNC3(dev_priv);
	FUNC1(vgpu, fence_num,
			FUNC6(vgpu, FUNC0(fence_num)));
	FUNC2(dev_priv);
	return 0;
}