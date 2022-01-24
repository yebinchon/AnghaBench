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
struct pci_dev {int dummy; } ;
struct drm_i915_private {int /*<<< orphan*/  drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev)
{
	struct drm_i915_private *i915;

	i915 = FUNC2(pdev);
	if (!i915) /* driver load aborted, nothing to cleanup */
		return;

	FUNC1(i915);
	FUNC3(pdev, NULL);

	FUNC0(&i915->drm);
}