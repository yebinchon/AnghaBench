#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  work; } ;
struct TYPE_7__ {TYPE_1__ hangcheck; } ;
struct TYPE_6__ {struct pci_dev* pdev; } ;
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; TYPE_3__ gt; TYPE_2__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 

void FUNC18(struct drm_i915_private *i915)
{
	struct pci_dev *pdev = i915->drm.pdev;

	FUNC1(&i915->runtime_pm);

	FUNC5(i915);

	/*
	 * After unregistering the device to prevent any new users, cancel
	 * all in-flight requests so that we can quickly unbind the active
	 * resources.
	 */
	FUNC11(&i915->gt);

	/* Flush any external code that still may be under the RCU lock */
	FUNC15();

	FUNC7(i915);

	FUNC2(&i915->drm);

	FUNC12(i915);

	FUNC13(&i915->drm);

	FUNC9(i915);

	FUNC17(pdev);
	FUNC16(pdev, NULL, NULL, NULL);

	FUNC10(i915);

	/* Free error state after interrupts are fully disabled. */
	FUNC0(&i915->gt.hangcheck.work);
	FUNC8(i915);

	FUNC6(i915);

	FUNC14(i915);

	FUNC4(i915);

	FUNC3(&i915->runtime_pm);
}