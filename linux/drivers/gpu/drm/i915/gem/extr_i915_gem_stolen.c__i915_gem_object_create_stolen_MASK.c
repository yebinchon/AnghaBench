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
struct drm_mm_node {int /*<<< orphan*/  size; } ;
struct drm_i915_private {int /*<<< orphan*/  drm; } ;
struct drm_i915_gem_object {int read_domains; struct drm_mm_node* stolen; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 unsigned int I915_CACHE_LLC ; 
 unsigned int I915_CACHE_NONE ; 
 int I915_GEM_DOMAIN_CPU ; 
 int I915_GEM_DOMAIN_GTT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct drm_i915_gem_object* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_gem_object*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_gem_object*,unsigned int) ; 
 int /*<<< orphan*/  i915_gem_object_stolen_ops ; 

__attribute__((used)) static struct drm_i915_gem_object *
FUNC7(struct drm_i915_private *dev_priv,
			       struct drm_mm_node *stolen)
{
	struct drm_i915_gem_object *obj;
	unsigned int cache_level;

	obj = FUNC2();
	if (obj == NULL)
		return NULL;

	FUNC1(&dev_priv->drm, &obj->base, stolen->size);
	FUNC4(obj, &i915_gem_object_stolen_ops);

	obj->stolen = stolen;
	obj->read_domains = I915_GEM_DOMAIN_CPU | I915_GEM_DOMAIN_GTT;
	cache_level = FUNC0(dev_priv) ? I915_CACHE_LLC : I915_CACHE_NONE;
	FUNC6(obj, cache_level);

	if (FUNC5(obj))
		goto cleanup;

	return obj;

cleanup:
	FUNC3(obj);
	return NULL;
}