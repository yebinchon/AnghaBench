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
struct vm_area_struct {struct drm_gem_object* vm_private_data; } ;
struct drm_gem_shmem_object {int dummy; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_gem_shmem_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*) ; 
 struct drm_gem_shmem_object* FUNC2 (struct drm_gem_object*) ; 

__attribute__((used)) static void FUNC3(struct vm_area_struct *vma)
{
	struct drm_gem_object *obj = vma->vm_private_data;
	struct drm_gem_shmem_object *shmem = FUNC2(obj);

	FUNC0(shmem);
	FUNC1(vma);
}