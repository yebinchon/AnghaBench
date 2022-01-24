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
struct drm_syncobj {int dummy; } ;
struct drm_i915_gem_execbuffer2 {int /*<<< orphan*/  num_cliprects; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_syncobj**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct drm_i915_gem_execbuffer2 *args,
		struct drm_syncobj **fences)
{
	if (fences)
		FUNC0(fences, args->num_cliprects);
}