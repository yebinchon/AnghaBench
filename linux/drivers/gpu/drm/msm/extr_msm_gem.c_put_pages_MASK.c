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
struct msm_gem_object {int flags; int /*<<< orphan*/ * pages; scalar_t__ sgt; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int MSM_BO_UNCACHED ; 
 int MSM_BO_WC ; 
 int /*<<< orphan*/  FUNC0 (struct drm_gem_object*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_gem_object*) ; 
 struct msm_gem_object* FUNC5 (struct drm_gem_object*) ; 
 scalar_t__ FUNC6 (struct drm_gem_object*) ; 

__attribute__((used)) static void FUNC7(struct drm_gem_object *obj)
{
	struct msm_gem_object *msm_obj = FUNC5(obj);

	if (msm_obj->pages) {
		if (msm_obj->sgt) {
			/* For non-cached buffers, ensure the new
			 * pages are clean because display controller,
			 * GPU, etc. are not coherent:
			 */
			if (msm_obj->flags & (MSM_BO_WC|MSM_BO_UNCACHED))
				FUNC4(msm_obj);

			FUNC3(msm_obj->sgt);
			FUNC1(msm_obj->sgt);
		}

		if (FUNC6(obj))
			FUNC0(obj, msm_obj->pages, true, false);
		else
			FUNC2(obj);

		msm_obj->pages = NULL;
	}
}