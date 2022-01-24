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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct drm_gem_shmem_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 
 struct drm_gem_shmem_object* FUNC3 (struct drm_gem_object*) ; 

__attribute__((used)) static void FUNC4(struct vm_area_struct *vma)
{
	struct drm_gem_object *obj = vma->vm_private_data;
	struct drm_gem_shmem_object *shmem = FUNC3(obj);
	int ret;

	ret = FUNC1(shmem);
	FUNC0(ret != 0);

	FUNC2(vma);
}