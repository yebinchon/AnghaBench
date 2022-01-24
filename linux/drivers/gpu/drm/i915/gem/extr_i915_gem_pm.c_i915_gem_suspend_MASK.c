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
struct TYPE_5__ {int /*<<< orphan*/  work; } ;
struct TYPE_8__ {int /*<<< orphan*/  uc; TYPE_1__ hangcheck; } ;
struct TYPE_7__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_6__ {int /*<<< orphan*/  userfault_wakeref; } ;
struct drm_i915_private {TYPE_4__ gt; TYPE_3__ drm; int /*<<< orphan*/  wq; TYPE_2__ ggtt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 

void FUNC9(struct drm_i915_private *i915)
{
	FUNC0("\n");

	FUNC5(&i915->ggtt.userfault_wakeref, 0);
	FUNC2(i915->wq);

	FUNC6(&i915->drm.struct_mutex);

	/*
	 * We have to flush all the executing contexts to main memory so
	 * that they can saved in the hibernation image. To ensure the last
	 * context image is coherent, we have to switch away from it. That
	 * leaves the i915->kernel_context still active when
	 * we actually suspend, and its image in memory may not match the GPU
	 * state. Fortunately, the kernel_context is disposable and we do
	 * not rely on its state.
	 */
	FUNC8(&i915->gt);

	FUNC7(&i915->drm.struct_mutex);

	FUNC1(&i915->gt.hangcheck.work);

	FUNC3(i915);

	FUNC4(&i915->gt.uc);
}