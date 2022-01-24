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
struct kgd_dev {int dummy; } ;
struct amdgpu_bo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_bo**) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_bo*) ; 

void FUNC5(struct kgd_dev *kgd, void *mem_obj)
{
	struct amdgpu_bo *bo = (struct amdgpu_bo *) mem_obj;

	FUNC1(bo, true);
	FUNC0(bo);
	FUNC2(bo);
	FUNC4(bo);
	FUNC3(&(bo));
}