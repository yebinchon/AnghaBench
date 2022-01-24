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
struct drm_i915_gem_object {int dummy; } ;
struct dma_buf {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 struct drm_i915_gem_object* FUNC0 (struct dma_buf*) ; 
 int FUNC1 (struct drm_i915_gem_object*) ; 
 int FUNC2 (struct drm_i915_gem_object*) ; 
 int FUNC3 (struct drm_i915_gem_object*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_gem_object*) ; 

__attribute__((used)) static int FUNC6(struct dma_buf *dma_buf, enum dma_data_direction direction)
{
	struct drm_i915_gem_object *obj = FUNC0(dma_buf);
	int err;

	err = FUNC2(obj);
	if (err)
		return err;

	err = FUNC1(obj);
	if (err)
		goto out;

	err = FUNC3(obj, false);
	FUNC4(obj);

out:
	FUNC5(obj);
	return err;
}