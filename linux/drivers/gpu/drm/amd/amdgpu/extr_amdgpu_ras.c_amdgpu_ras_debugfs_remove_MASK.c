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
struct ras_manager {int /*<<< orphan*/ * ent; } ;
struct ras_common_if {int dummy; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 struct ras_manager* FUNC0 (struct amdgpu_device*,struct ras_common_if*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ras_manager*) ; 

void FUNC3(struct amdgpu_device *adev,
		struct ras_common_if *head)
{
	struct ras_manager *obj = FUNC0(adev, head);

	if (!obj || !obj->ent)
		return;

	FUNC1(obj->ent);
	obj->ent = NULL;
	FUNC2(obj);
}