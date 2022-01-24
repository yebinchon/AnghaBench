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
typedef  int /*<<< orphan*/  u32 ;
struct i915_address_space {int dummy; } ;
struct drm_i915_gem_vm_control {int /*<<< orphan*/  vm_id; scalar_t__ extensions; scalar_t__ flags; } ;
struct drm_i915_file_private {int /*<<< orphan*/  vm_idr_lock; int /*<<< orphan*/  vm_idr; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct i915_address_space*) ; 
 struct i915_address_space* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct drm_device *dev, void *data,
			      struct drm_file *file)
{
	struct drm_i915_file_private *file_priv = file->driver_priv;
	struct drm_i915_gem_vm_control *args = data;
	struct i915_address_space *vm;
	int err;
	u32 id;

	if (args->flags)
		return -EINVAL;

	if (args->extensions)
		return -EINVAL;

	id = args->vm_id;
	if (!id)
		return -ENOENT;

	err = FUNC2(&file_priv->vm_idr_lock);
	if (err)
		return err;

	vm = FUNC1(&file_priv->vm_idr, id);

	FUNC3(&file_priv->vm_idr_lock);
	if (!vm)
		return -ENOENT;

	FUNC0(vm);
	return 0;
}