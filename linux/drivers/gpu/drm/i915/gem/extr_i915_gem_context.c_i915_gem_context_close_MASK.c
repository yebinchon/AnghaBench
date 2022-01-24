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
struct drm_i915_file_private {int /*<<< orphan*/  vm_idr_lock; int /*<<< orphan*/  vm_idr; int /*<<< orphan*/  context_idr_lock; int /*<<< orphan*/  context_idr; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  context_idr_cleanup ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vm_idr_cleanup ; 

void FUNC3(struct drm_file *file)
{
	struct drm_i915_file_private *file_priv = file->driver_priv;

	FUNC1(&file_priv->context_idr, context_idr_cleanup, NULL);
	FUNC0(&file_priv->context_idr);
	FUNC2(&file_priv->context_idr_lock);

	FUNC1(&file_priv->vm_idr, vm_idr_cleanup, NULL);
	FUNC0(&file_priv->vm_idr);
	FUNC2(&file_priv->vm_idr_lock);
}