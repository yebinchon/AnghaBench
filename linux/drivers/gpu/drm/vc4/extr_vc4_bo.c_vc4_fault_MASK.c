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
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_fault {struct vm_area_struct* vma; } ;
struct vm_area_struct {struct drm_gem_object* vm_private_data; } ;
struct vc4_bo {scalar_t__ madv; int /*<<< orphan*/  madv_lock; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VM_FAULT_SIGBUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ __VC4_MADV_PURGED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vc4_bo* FUNC3 (struct drm_gem_object*) ; 

vm_fault_t FUNC4(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;
	struct drm_gem_object *obj = vma->vm_private_data;
	struct vc4_bo *bo = FUNC3(obj);

	/* The only reason we would end up here is when user-space accesses
	 * BO's memory after it's been purged.
	 */
	FUNC1(&bo->madv_lock);
	FUNC0(bo->madv != __VC4_MADV_PURGED);
	FUNC2(&bo->madv_lock);

	return VM_FAULT_SIGBUS;
}