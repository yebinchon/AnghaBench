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
struct lima_vm {int dummy; } ;
struct lima_drm_priv {struct lima_vm* vm; } ;
struct lima_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct lima_vm*,struct lima_bo*,int) ; 
 struct lima_bo* FUNC1 (struct drm_gem_object*) ; 
 struct lima_drm_priv* FUNC2 (struct drm_file*) ; 

int FUNC3(struct drm_gem_object *obj, struct drm_file *file)
{
	struct lima_bo *bo = FUNC1(obj);
	struct lima_drm_priv *priv = FUNC2(file);
	struct lima_vm *vm = priv->vm;

	return FUNC0(vm, bo, true);
}