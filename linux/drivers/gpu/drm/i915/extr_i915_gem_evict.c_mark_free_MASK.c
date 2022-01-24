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
struct list_head {int dummy; } ;
struct i915_vma {int /*<<< orphan*/  node; int /*<<< orphan*/  evict_link; } ;
struct drm_mm_scan {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_mm_scan*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static bool
FUNC3(struct drm_mm_scan *scan,
	  struct i915_vma *vma,
	  unsigned int flags,
	  struct list_head *unwind)
{
	if (FUNC1(vma))
		return false;

	FUNC2(&vma->evict_link, unwind);
	return FUNC0(scan, &vma->node);
}