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
struct vkms_gem_object {int /*<<< orphan*/  vaddr; } ;
struct vkms_composer {int /*<<< orphan*/  fb; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,struct vkms_composer*,struct vkms_composer*) ; 
 struct drm_gem_object* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct vkms_gem_object* FUNC3 (struct drm_gem_object*) ; 

__attribute__((used)) static void FUNC4(struct vkms_composer *cursor_composer,
			   struct vkms_composer *primary_composer,
			   void *vaddr_out)
{
	struct drm_gem_object *cursor_obj;
	struct vkms_gem_object *cursor_vkms_obj;

	cursor_obj = FUNC2(&cursor_composer->fb, 0);
	cursor_vkms_obj = FUNC3(cursor_obj);

	if (FUNC0(!cursor_vkms_obj->vaddr))
		return;

	FUNC1(vaddr_out, cursor_vkms_obj->vaddr,
	      primary_composer, cursor_composer);
}