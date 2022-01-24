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
struct amdgpu_fpriv {int /*<<< orphan*/  bo_list_handles; } ;
struct amdgpu_bo_list {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int ENOENT ; 
 struct amdgpu_bo_list* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(struct amdgpu_fpriv *fpriv, int id,
		       struct amdgpu_bo_list **result)
{
	FUNC2();
	*result = FUNC0(&fpriv->bo_list_handles, id);

	if (*result && FUNC1(&(*result)->refcount)) {
		FUNC3();
		return 0;
	}

	FUNC3();
	return -ENOENT;
}