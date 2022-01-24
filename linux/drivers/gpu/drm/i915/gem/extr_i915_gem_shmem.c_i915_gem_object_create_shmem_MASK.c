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
typedef  int u64 ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {TYPE_1__* filp; int /*<<< orphan*/  size; } ;
struct drm_i915_gem_object {void* read_domains; void* write_domain; TYPE_2__ base; } ;
struct address_space {int dummy; } ;
typedef  int gfp_t ;
struct TYPE_3__ {struct address_space* f_mapping; } ;

/* Variables and functions */
 int E2BIG ; 
 int ENOMEM ; 
 struct drm_i915_gem_object* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int GFP_HIGHUSER ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 unsigned int I915_CACHE_LLC ; 
 unsigned int I915_CACHE_NONE ; 
 void* I915_GEM_DOMAIN_CPU ; 
 scalar_t__ INT_MAX ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ PAGE_SHIFT ; 
 int __GFP_DMA32 ; 
 int __GFP_HIGHMEM ; 
 int __GFP_RECLAIM ; 
 int __GFP_RECLAIMABLE ; 
 int FUNC5 (struct drm_i915_private*,TYPE_2__*,int) ; 
 struct drm_i915_gem_object* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_gem_object*,unsigned int) ; 
 int /*<<< orphan*/  i915_gem_shmem_ops ; 
 int FUNC10 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC11 (struct address_space*,int) ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_gem_object*) ; 

struct drm_i915_gem_object *
FUNC14(struct drm_i915_private *i915, u64 size)
{
	struct drm_i915_gem_object *obj;
	struct address_space *mapping;
	unsigned int cache_level;
	gfp_t mask;
	int ret;

	/* There is a prevalence of the assumption that we fit the object's
	 * page count inside a 32bit _signed_ variable. Let's document this and
	 * catch if we ever need to fix it. In the meantime, if you do spot
	 * such a local variable, please consider fixing!
	 */
	if (size >> PAGE_SHIFT > INT_MAX)
		return FUNC0(-E2BIG);

	if (FUNC12(size, obj->base.size))
		return FUNC0(-E2BIG);

	obj = FUNC6();
	if (!obj)
		return FUNC0(-ENOMEM);

	ret = FUNC5(i915, &obj->base, size);
	if (ret)
		goto fail;

	mask = GFP_HIGHUSER | __GFP_RECLAIMABLE;
	if (FUNC4(i915) || FUNC3(i915)) {
		/* 965gm cannot relocate objects above 4GiB. */
		mask &= ~__GFP_HIGHMEM;
		mask |= __GFP_DMA32;
	}

	mapping = obj->base.filp->f_mapping;
	FUNC11(mapping, mask);
	FUNC1(!(FUNC10(mapping) & __GFP_RECLAIM));

	FUNC8(obj, &i915_gem_shmem_ops);

	obj->write_domain = I915_GEM_DOMAIN_CPU;
	obj->read_domains = I915_GEM_DOMAIN_CPU;

	if (FUNC2(i915))
		/* On some devices, we can have the GPU use the LLC (the CPU
		 * cache) for about a 10% performance improvement
		 * compared to uncached.  Graphics requests other than
		 * display scanout are coherent with the CPU in
		 * accessing this cache.  This means in this mode we
		 * don't need to clflush on the CPU side, and on the
		 * GPU side we only need to flush internal caches to
		 * get data visible to the CPU.
		 *
		 * However, we maintain the display planes as UC, and so
		 * need to rebind when first used as such.
		 */
		cache_level = I915_CACHE_LLC;
	else
		cache_level = I915_CACHE_NONE;

	FUNC9(obj, cache_level);

	FUNC13(obj);

	return obj;

fail:
	FUNC7(obj);
	return FUNC0(ret);
}