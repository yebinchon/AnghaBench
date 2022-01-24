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
typedef  int u32 ;
struct drm_i915_gem_set_domain {int read_domains; int write_domain; int /*<<< orphan*/  handle; } ;
struct drm_i915_gem_object {int /*<<< orphan*/  frontbuffer; int /*<<< orphan*/  write_domain; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENXIO ; 
 int I915_GEM_DOMAIN_GTT ; 
 int I915_GEM_DOMAIN_WC ; 
 int I915_GEM_GPU_DOMAINS ; 
 int I915_WAIT_ALL ; 
 int I915_WAIT_INTERRUPTIBLE ; 
 int I915_WAIT_PRIORITY ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  ORIGIN_CPU ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_gem_object*) ; 
 scalar_t__ FUNC2 (struct drm_i915_gem_object*) ; 
 int FUNC3 (struct drm_i915_gem_object*) ; 
 struct drm_i915_gem_object* FUNC4 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_gem_object*) ; 
 int FUNC7 (struct drm_i915_gem_object*,int) ; 
 int FUNC8 (struct drm_i915_gem_object*,int) ; 
 int FUNC9 (struct drm_i915_gem_object*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_gem_object*) ; 
 int FUNC12 (struct drm_i915_gem_object*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC14(struct drm_device *dev, void *data,
			  struct drm_file *file)
{
	struct drm_i915_gem_set_domain *args = data;
	struct drm_i915_gem_object *obj;
	u32 read_domains = args->read_domains;
	u32 write_domain = args->write_domain;
	int err;

	/* Only handle setting domains to types used by the CPU. */
	if ((write_domain | read_domains) & I915_GEM_GPU_DOMAINS)
		return -EINVAL;

	/*
	 * Having something in the write domain implies it's in the read
	 * domain, and only that read domain.  Enforce that in the request.
	 */
	if (write_domain && read_domains != write_domain)
		return -EINVAL;

	if (!read_domains)
		return 0;

	obj = FUNC4(file, args->handle);
	if (!obj)
		return -ENOENT;

	/*
	 * Already in the desired write domain? Nothing for us to do!
	 *
	 * We apply a little bit of cunning here to catch a broader set of
	 * no-ops. If obj->write_domain is set, we must be in the same
	 * obj->read_domains, and only that domain. Therefore, if that
	 * obj->write_domain matches the request read_domains, we are
	 * already in the same read/write domain and can skip the operation,
	 * without having to further check the requested write_domain.
	 */
	if (FUNC0(obj->write_domain) == read_domains) {
		err = 0;
		goto out;
	}

	/*
	 * Try to flush the object off the GPU without holding the lock.
	 * We will repeat the flush holding the lock in the normal manner
	 * to catch cases where we are gazumped.
	 */
	err = FUNC12(obj,
				   I915_WAIT_INTERRUPTIBLE |
				   I915_WAIT_PRIORITY |
				   (write_domain ? I915_WAIT_ALL : 0),
				   MAX_SCHEDULE_TIMEOUT);
	if (err)
		goto out;

	/*
	 * Proxy objects do not control access to the backing storage, ergo
	 * they cannot be used as a means to manipulate the cache domain
	 * tracking for that backing storage. The proxy object is always
	 * considered to be outside of any cache domain.
	 */
	if (FUNC2(obj)) {
		err = -ENXIO;
		goto out;
	}

	/*
	 * Flush and acquire obj->pages so that we are coherent through
	 * direct access in memory with previous cached writes through
	 * shmemfs and that our cache domain tracking remains valid.
	 * For example, if the obj->filp was moved to swap without us
	 * being notified and releasing the pages, we would mistakenly
	 * continue to assume that the obj remained out of the CPU cached
	 * domain.
	 */
	err = FUNC5(obj);
	if (err)
		goto out;

	err = FUNC3(obj);
	if (err)
		goto out_unpin;

	if (read_domains & I915_GEM_DOMAIN_WC)
		err = FUNC9(obj, write_domain);
	else if (read_domains & I915_GEM_DOMAIN_GTT)
		err = FUNC8(obj, write_domain);
	else
		err = FUNC7(obj, write_domain);

	/* And bump the LRU for this access */
	FUNC1(obj);

	FUNC10(obj);

	if (write_domain)
		FUNC13(obj->frontbuffer, ORIGIN_CPU);

out_unpin:
	FUNC11(obj);
out:
	FUNC6(obj);
	return err;
}