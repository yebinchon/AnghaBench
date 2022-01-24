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
struct qxl_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 struct qxl_bo* FUNC1 (struct drm_gem_object*) ; 
 int FUNC2 (struct qxl_bo*,void**) ; 

void *FUNC3(struct drm_gem_object *obj)
{
	struct qxl_bo *bo = FUNC1(obj);
	void *ptr;
	int ret;

	ret = FUNC2(bo, &ptr);
	if (ret < 0)
		return FUNC0(ret);

	return ptr;
}