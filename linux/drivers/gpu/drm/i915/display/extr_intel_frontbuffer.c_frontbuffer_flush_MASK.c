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
struct TYPE_2__ {unsigned int busy_bits; int /*<<< orphan*/  lock; } ;
struct drm_i915_private {TYPE_1__ fb_tracking; } ;
typedef  enum fb_op_origin { ____Placeholder_fb_op_origin } fb_op_origin ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *i915,
			      unsigned int frontbuffer_bits,
			      enum fb_op_origin origin)
{
	/* Delay flushing when rings are still busy.*/
	FUNC4(&i915->fb_tracking.lock);
	frontbuffer_bits &= ~i915->fb_tracking.busy_bits;
	FUNC5(&i915->fb_tracking.lock);

	if (!frontbuffer_bits)
		return;

	FUNC3();
	FUNC0(i915, frontbuffer_bits);
	FUNC2(i915, frontbuffer_bits, origin);
	FUNC1(i915, frontbuffer_bits, origin);
}