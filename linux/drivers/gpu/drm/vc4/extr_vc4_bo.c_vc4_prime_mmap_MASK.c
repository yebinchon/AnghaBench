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
struct vm_area_struct {int vm_flags; } ;
struct vc4_bo {scalar_t__ validated_shader; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int VM_WRITE ; 
 int FUNC1 (struct drm_gem_object*,struct vm_area_struct*) ; 
 struct vc4_bo* FUNC2 (struct drm_gem_object*) ; 

int FUNC3(struct drm_gem_object *obj, struct vm_area_struct *vma)
{
	struct vc4_bo *bo = FUNC2(obj);

	if (bo->validated_shader && (vma->vm_flags & VM_WRITE)) {
		FUNC0("mmaping of shader BOs for writing not allowed.\n");
		return -EINVAL;
	}

	return FUNC1(obj, vma);
}