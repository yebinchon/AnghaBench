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
struct ras_common_if {size_t block; } ;
struct ras_manager {int /*<<< orphan*/  node; struct amdgpu_device* adev; struct ras_common_if head; } ;
struct amdgpu_ras {int /*<<< orphan*/  head; struct ras_manager* objs; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 size_t AMDGPU_RAS_BLOCK_COUNT ; 
 scalar_t__ FUNC0 (struct ras_manager*) ; 
 struct amdgpu_ras* FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ras_manager*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ras_manager *FUNC4(struct amdgpu_device *adev,
		struct ras_common_if *head)
{
	struct amdgpu_ras *con = FUNC1(adev);
	struct ras_manager *obj;

	if (!con)
		return NULL;

	if (head->block >= AMDGPU_RAS_BLOCK_COUNT)
		return NULL;

	obj = &con->objs[head->block];
	/* already exist. return obj? */
	if (FUNC0(obj))
		return NULL;

	obj->head = *head;
	obj->adev = adev;
	FUNC3(&obj->node, &con->head);
	FUNC2(obj);

	return obj;
}