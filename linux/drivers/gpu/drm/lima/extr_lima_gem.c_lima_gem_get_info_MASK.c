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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct lima_vm {int dummy; } ;
struct lima_drm_priv {struct lima_vm* vm; } ;
struct lima_bo {int dummy; } ;
struct drm_gem_object {int /*<<< orphan*/  vma_node; } ;
struct drm_file {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct drm_gem_object*) ; 
 struct drm_gem_object* FUNC1 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct lima_vm*,struct lima_bo*) ; 
 struct lima_bo* FUNC5 (struct drm_gem_object*) ; 
 struct lima_drm_priv* FUNC6 (struct drm_file*) ; 

int FUNC7(struct drm_file *file, u32 handle, u32 *va, u64 *offset)
{
	struct drm_gem_object *obj;
	struct lima_bo *bo;
	struct lima_drm_priv *priv = FUNC6(file);
	struct lima_vm *vm = priv->vm;
	int err;

	obj = FUNC1(file, handle);
	if (!obj)
		return -ENOENT;

	bo = FUNC5(obj);

	*va = FUNC4(vm, bo);

	err = FUNC0(obj);
	if (!err)
		*offset = FUNC3(&obj->vma_node);

	FUNC2(obj);
	return err;
}