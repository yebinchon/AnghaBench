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
struct omap_gem_object {int flags; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct drm_gem_object {size_t size; } ;

/* Variables and functions */
 int OMAP_BO_TILED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct omap_gem_object* FUNC2 (struct drm_gem_object*) ; 

size_t FUNC3(struct drm_gem_object *obj)
{
	struct omap_gem_object *omap_obj = FUNC2(obj);
	size_t size = obj->size;

	if (omap_obj->flags & OMAP_BO_TILED) {
		/* for tiled buffers, the virtual size has stride rounded up
		 * to 4kb.. (to hide the fact that row n+1 might start 16kb or
		 * 32kb later!).  But we don't back the entire buffer with
		 * pages, only the valid picture part.. so need to adjust for
		 * this in the size used to mmap and generate mmap offset
		 */
		size = FUNC1(FUNC0(omap_obj->flags),
				omap_obj->width, omap_obj->height);
	}

	return size;
}