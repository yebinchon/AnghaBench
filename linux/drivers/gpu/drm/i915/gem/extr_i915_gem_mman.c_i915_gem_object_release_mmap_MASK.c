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
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_6__ {TYPE_2__ vm; } ;
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; TYPE_3__ ggtt; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct drm_i915_gem_object {int /*<<< orphan*/  userfault_count; TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct drm_i915_gem_object *obj)
{
	struct drm_i915_private *i915 = FUNC5(obj->base.dev);
	intel_wakeref_t wakeref;

	/* Serialisation between user GTT access and our code depends upon
	 * revoking the CPU's PTE whilst the mutex is held. The next user
	 * pagefault then has to wait until we release the mutex.
	 *
	 * Note that RPM complicates somewhat by adding an additional
	 * requirement that operations to the GGTT be made holding the RPM
	 * wakeref.
	 */
	wakeref = FUNC1(&i915->runtime_pm);
	FUNC3(&i915->ggtt.vm.mutex);

	if (!obj->userfault_count)
		goto out;

	FUNC0(obj);

	/* Ensure that the CPU's PTE are revoked and there are not outstanding
	 * memory transactions from userspace before we return. The TLB
	 * flushing implied above by changing the PTE above *should* be
	 * sufficient, an extra barrier here just provides us with a bit
	 * of paranoid documentation about our requirement to serialise
	 * memory writes before touching registers / GSM.
	 */
	FUNC6();

out:
	FUNC4(&i915->ggtt.vm.mutex);
	FUNC2(&i915->runtime_pm, wakeref);
}