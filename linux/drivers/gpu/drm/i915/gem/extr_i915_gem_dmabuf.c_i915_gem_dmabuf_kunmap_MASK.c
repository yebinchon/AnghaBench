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

/* Variables and functions */
 struct drm_i915_gem_object* FUNC0 (struct dma_buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static void FUNC4(struct dma_buf *dma_buf, unsigned long page_num, void *addr)
{
	struct drm_i915_gem_object *obj = FUNC0(dma_buf);

	FUNC2(FUNC3(addr));
	FUNC1(obj);
}