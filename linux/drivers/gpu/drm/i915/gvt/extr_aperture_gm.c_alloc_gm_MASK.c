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
typedef  int /*<<< orphan*/  u64 ;
struct drm_mm_node {int dummy; } ;
struct TYPE_4__ {struct drm_mm_node low_gm_node; struct drm_mm_node high_gm_node; } ;
struct intel_vgpu {TYPE_1__ gm; struct intel_gvt* gvt; } ;
struct intel_gvt {struct drm_i915_private* dev_priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_5__ {int /*<<< orphan*/  vm; } ;
struct drm_i915_private {TYPE_3__ drm; TYPE_2__ ggtt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I915_COLOR_UNEVICTABLE ; 
 int /*<<< orphan*/  I915_GTT_PAGE_SIZE ; 
 unsigned int PIN_HIGH ; 
 unsigned int PIN_MAPPABLE ; 
 int /*<<< orphan*/  FUNC1 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_gvt*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct drm_mm_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_vgpu*) ; 

__attribute__((used)) static int FUNC13(struct intel_vgpu *vgpu, bool high_gm)
{
	struct intel_gvt *gvt = vgpu->gvt;
	struct drm_i915_private *dev_priv = gvt->dev_priv;
	unsigned int flags;
	u64 start, end, size;
	struct drm_mm_node *node;
	int ret;

	if (high_gm) {
		node = &vgpu->gm.high_gm_node;
		size = FUNC12(vgpu);
		start = FUNC0(FUNC4(gvt), I915_GTT_PAGE_SIZE);
		end = FUNC0(FUNC5(gvt), I915_GTT_PAGE_SIZE);
		flags = PIN_HIGH;
	} else {
		node = &vgpu->gm.low_gm_node;
		size = FUNC11(vgpu);
		start = FUNC0(FUNC1(gvt), I915_GTT_PAGE_SIZE);
		end = FUNC0(FUNC2(gvt), I915_GTT_PAGE_SIZE);
		flags = PIN_MAPPABLE;
	}

	FUNC9(&dev_priv->drm.struct_mutex);
	FUNC8(dev_priv);
	ret = FUNC6(&dev_priv->ggtt.vm, node,
				  size, I915_GTT_PAGE_SIZE,
				  I915_COLOR_UNEVICTABLE,
				  start, end, flags);
	FUNC7(dev_priv);
	FUNC10(&dev_priv->drm.struct_mutex);
	if (ret)
		FUNC3("fail to alloc %s gm space from host\n",
			high_gm ? "high" : "low");

	return ret;
}