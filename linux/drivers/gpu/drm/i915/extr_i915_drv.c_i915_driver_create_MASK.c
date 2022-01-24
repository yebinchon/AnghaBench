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
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  device; int /*<<< orphan*/  dev; } ;
struct intel_device_info {scalar_t__ gen; int /*<<< orphan*/  gen_mask; } ;
struct TYPE_3__ {struct pci_dev* pdev; struct drm_i915_private* dev_private; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct TYPE_4__ {int /*<<< orphan*/  device_id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 struct drm_i915_private* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__* FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  driver ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_device_info*,struct intel_device_info const*,int) ; 
 struct intel_device_info* FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,struct drm_i915_private*) ; 

__attribute__((used)) static struct drm_i915_private *
FUNC10(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	const struct intel_device_info *match_info =
		(struct intel_device_info *)ent->driver_data;
	struct intel_device_info *device_info;
	struct drm_i915_private *i915;
	int err;

	i915 = FUNC6(sizeof(*i915), GFP_KERNEL);
	if (!i915)
		return FUNC2(-ENOMEM);

	err = FUNC4(&i915->drm, &driver, &pdev->dev);
	if (err) {
		FUNC5(i915);
		return FUNC2(err);
	}

	i915->drm.dev_private = i915;

	i915->drm.pdev = pdev;
	FUNC9(pdev, i915);

	/* Setup the write-once "constant" device info */
	device_info = FUNC8(i915);
	FUNC7(device_info, match_info, sizeof(*device_info));
	FUNC3(i915)->device_id = pdev->device;

	FUNC1(device_info->gen > FUNC0(device_info->gen_mask));

	return i915;
}