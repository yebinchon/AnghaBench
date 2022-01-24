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
 struct qxl_bo* FUNC0 (struct drm_gem_object*) ; 
 int FUNC1 (struct qxl_bo*) ; 

int FUNC2(struct drm_gem_object *obj)
{
	struct qxl_bo *bo = FUNC0(obj);

	return FUNC1(bo);
}