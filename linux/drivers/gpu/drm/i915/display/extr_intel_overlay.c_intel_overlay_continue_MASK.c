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
typedef  int u32 ;
struct intel_overlay {int flip_addr; int /*<<< orphan*/  active; struct drm_i915_private* i915; } ;
struct i915_vma {int dummy; } ;
typedef  int i915_request ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOVSTA ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int*) ; 
 int MI_OVERLAY_CONTINUE ; 
 int MI_OVERLAY_FLIP ; 
 int OFC_UPDATE ; 
 int FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int* FUNC5 (struct intel_overlay*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_overlay*,struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*) ; 
 int* FUNC9 (int*,int) ; 

__attribute__((used)) static int FUNC10(struct intel_overlay *overlay,
				  struct i915_vma *vma,
				  bool load_polyphase_filter)
{
	struct drm_i915_private *dev_priv = overlay->i915;
	struct i915_request *rq;
	u32 flip_addr = overlay->flip_addr;
	u32 tmp, *cs;

	FUNC4(!overlay->active);

	if (load_polyphase_filter)
		flip_addr |= OFC_UPDATE;

	/* check for underruns */
	tmp = FUNC1(DOVSTA);
	if (tmp & (1 << 17))
		FUNC0("overlay underrun, DOVSTA: %x\n", tmp);

	rq = FUNC5(overlay, NULL);
	if (FUNC2(rq))
		return FUNC3(rq);

	cs = FUNC9(rq, 2);
	if (FUNC2(cs)) {
		FUNC6(rq);
		return FUNC3(cs);
	}

	*cs++ = MI_OVERLAY_FLIP | MI_OVERLAY_CONTINUE;
	*cs++ = flip_addr;
	FUNC8(rq, cs);

	FUNC7(overlay, vma);
	FUNC6(rq);

	return 0;
}