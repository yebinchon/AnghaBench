#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_gem_object {int dummy; } ;
struct TYPE_2__ {scalar_t__ is_heap; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct drm_gem_object*) ; 
 TYPE_1__* FUNC1 (struct drm_gem_object*) ; 

__attribute__((used)) static int FUNC2(struct drm_gem_object *obj)
{
	if (FUNC1(obj)->is_heap)
		return -EINVAL;

	return FUNC0(obj);
}