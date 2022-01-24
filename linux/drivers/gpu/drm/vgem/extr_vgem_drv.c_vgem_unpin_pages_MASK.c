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
struct drm_vgem_gem_object {scalar_t__ pages_pin_count; int /*<<< orphan*/  pages_lock; int /*<<< orphan*/ * pages; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct drm_vgem_gem_object *bo)
{
	FUNC1(&bo->pages_lock);
	if (--bo->pages_pin_count == 0) {
		FUNC0(&bo->base, bo->pages, true, true);
		bo->pages = NULL;
	}
	FUNC2(&bo->pages_lock);
}