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
struct timespec {int dummy; } ;
struct etnaviv_gpu {int dummy; } ;
struct etnaviv_gem_object {int dummy; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct etnaviv_gpu*,struct etnaviv_gem_object*,struct timespec*) ; 
 struct etnaviv_gem_object* FUNC1 (struct drm_gem_object*) ; 

int FUNC2(struct etnaviv_gpu *gpu, struct drm_gem_object *obj,
	struct timespec *timeout)
{
	struct etnaviv_gem_object *etnaviv_obj = FUNC1(obj);

	return FUNC0(gpu, etnaviv_obj, timeout);
}