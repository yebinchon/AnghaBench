#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct drm_i915_file_private* file; } ;
struct i915_ppgtt {TYPE_1__ vm; } ;
struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_vm_control {int vm_id; scalar_t__ extensions; scalar_t__ flags; } ;
struct drm_i915_file_private {int /*<<< orphan*/  vm_idr_lock; int /*<<< orphan*/  vm_idr; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct i915_ppgtt*) ; 
 int FUNC3 (struct i915_ppgtt*) ; 
 struct i915_ppgtt* FUNC4 (struct drm_i915_private*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i915_ppgtt*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

int FUNC12(struct drm_device *dev, void *data,
			     struct drm_file *file)
{
	struct drm_i915_private *i915 = FUNC10(dev);
	struct drm_i915_gem_vm_control *args = data;
	struct drm_i915_file_private *file_priv = file->driver_priv;
	struct i915_ppgtt *ppgtt;
	int err;

	if (!FUNC1(i915))
		return -ENODEV;

	if (args->flags)
		return -EINVAL;

	ppgtt = FUNC4(i915);
	if (FUNC2(ppgtt))
		return FUNC3(ppgtt);

	ppgtt->vm.file = file_priv;

	if (args->extensions) {
		err = FUNC5(FUNC11(args->extensions),
					   NULL, 0,
					   ppgtt);
		if (err)
			goto err_put;
	}

	err = FUNC8(&file_priv->vm_idr_lock);
	if (err)
		goto err_put;

	err = FUNC7(&file_priv->vm_idr, &ppgtt->vm, 0, 0, GFP_KERNEL);
	if (err < 0)
		goto err_unlock;

	FUNC0(err == 0); /* reserved for invalid/unassigned ppgtt */

	FUNC9(&file_priv->vm_idr_lock);

	args->vm_id = err;
	return 0;

err_unlock:
	FUNC9(&file_priv->vm_idr_lock);
err_put:
	FUNC6(&ppgtt->vm);
	return err;
}