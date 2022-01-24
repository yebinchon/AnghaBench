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
struct msm_gem_object {int /*<<< orphan*/  vram_node; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 struct msm_gem_object* FUNC0 (struct drm_gem_object*) ; 

__attribute__((used)) static bool FUNC1(struct drm_gem_object *obj)
{
	struct msm_gem_object *msm_obj = FUNC0(obj);
	return !msm_obj->vram_node;
}