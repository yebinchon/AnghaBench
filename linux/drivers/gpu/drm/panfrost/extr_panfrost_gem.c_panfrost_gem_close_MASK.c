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
struct panfrost_gem_object {int /*<<< orphan*/  node; scalar_t__ is_mapped; } ;
struct panfrost_file_priv {int /*<<< orphan*/  mm_lock; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {struct panfrost_file_priv* driver_priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct panfrost_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct panfrost_gem_object* FUNC5 (struct drm_gem_object*) ; 

__attribute__((used)) static void FUNC6(struct drm_gem_object *obj, struct drm_file *file_priv)
{
	struct panfrost_gem_object *bo = FUNC5(obj);
	struct panfrost_file_priv *priv = file_priv->driver_priv;

	if (bo->is_mapped)
		FUNC2(bo);

	FUNC3(&priv->mm_lock);
	if (FUNC0(&bo->node))
		FUNC1(&bo->node);
	FUNC4(&priv->mm_lock);
}