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
struct intel_engine_pool_node {struct drm_i915_gem_object* obj; int /*<<< orphan*/  active; struct intel_engine_pool* pool; } ;
struct intel_engine_pool {int dummy; } ;
struct intel_engine_cs {int /*<<< orphan*/  i915; } ;
struct drm_i915_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct intel_engine_pool_node* FUNC0 (struct drm_i915_gem_object*) ; 
 struct intel_engine_pool_node* FUNC1 (int /*<<< orphan*/ ) ; 
 int GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct drm_i915_gem_object*) ; 
 int __GFP_NOWARN ; 
 int __GFP_RETRY_MAYFAIL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_i915_gem_object* FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_engine_pool_node*) ; 
 struct intel_engine_pool_node* FUNC7 (int,int) ; 
 int /*<<< orphan*/  pool_active ; 
 int /*<<< orphan*/  pool_retire ; 
 struct intel_engine_cs* FUNC8 (struct intel_engine_pool*) ; 

__attribute__((used)) static struct intel_engine_pool_node *
FUNC9(struct intel_engine_pool *pool, size_t sz)
{
	struct intel_engine_cs *engine = FUNC8(pool);
	struct intel_engine_pool_node *node;
	struct drm_i915_gem_object *obj;

	node = FUNC7(sizeof(*node),
		       GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_NOWARN);
	if (!node)
		return FUNC1(-ENOMEM);

	node->pool = pool;
	FUNC4(engine->i915, &node->active, pool_active, pool_retire);

	obj = FUNC5(engine->i915, sz);
	if (FUNC2(obj)) {
		FUNC3(&node->active);
		FUNC6(node);
		return FUNC0(obj);
	}

	node->obj = obj;
	return node;
}