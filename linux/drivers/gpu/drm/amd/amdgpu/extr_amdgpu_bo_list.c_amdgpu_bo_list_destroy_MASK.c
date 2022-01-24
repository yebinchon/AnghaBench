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
struct amdgpu_fpriv {int /*<<< orphan*/  bo_list_lock; int /*<<< orphan*/  bo_list_handles; } ;
struct amdgpu_bo_list {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  amdgpu_bo_list_free ; 
 struct amdgpu_bo_list* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_fpriv *fpriv, int id)
{
	struct amdgpu_bo_list *list;

	FUNC2(&fpriv->bo_list_lock);
	list = FUNC0(&fpriv->bo_list_handles, id);
	FUNC3(&fpriv->bo_list_lock);
	if (list)
		FUNC1(&list->refcount, amdgpu_bo_list_free);
}