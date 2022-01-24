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
struct intel_frontbuffer {TYPE_2__* obj; } ;
struct TYPE_6__ {unsigned int busy_bits; unsigned int flip_bits; int /*<<< orphan*/  lock; } ;
struct drm_i915_private {TYPE_3__ fb_tracking; } ;
typedef  enum fb_op_origin { ____Placeholder_fb_op_origin } fb_op_origin ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;

/* Variables and functions */
 int ORIGIN_CS ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct intel_frontbuffer *front,
			   enum fb_op_origin origin,
			   unsigned int frontbuffer_bits)
{
	struct drm_i915_private *i915 = FUNC6(front->obj->base.dev);

	if (origin == ORIGIN_CS) {
		FUNC4(&i915->fb_tracking.lock);
		i915->fb_tracking.busy_bits |= frontbuffer_bits;
		i915->fb_tracking.flip_bits &= ~frontbuffer_bits;
		FUNC5(&i915->fb_tracking.lock);
	}

	FUNC3();
	FUNC2(i915, frontbuffer_bits, origin);
	FUNC0(i915, frontbuffer_bits);
	FUNC1(i915, frontbuffer_bits, origin);
}