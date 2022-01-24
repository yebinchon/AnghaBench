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
struct drm_gem_shmem_object {int dummy; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_gem_shmem_object*) ; 
 struct drm_gem_shmem_object* FUNC1 (struct drm_gem_object*) ; 

int FUNC2(struct drm_gem_object *obj)
{
	struct drm_gem_shmem_object *shmem = FUNC1(obj);

	return FUNC0(shmem);
}