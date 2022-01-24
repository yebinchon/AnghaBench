#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  attr; } ;
struct ras_manager {scalar_t__ attr_inuse; TYPE_2__ sysfs_attr; } ;
struct ras_common_if {int dummy; } ;
struct amdgpu_device {TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int EINVAL ; 
 struct ras_manager* FUNC0 (struct amdgpu_device*,struct ras_common_if*) ; 
 int /*<<< orphan*/  FUNC1 (struct ras_manager*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

int FUNC3(struct amdgpu_device *adev,
		struct ras_common_if *head)
{
	struct ras_manager *obj = FUNC0(adev, head);

	if (!obj || !obj->attr_inuse)
		return -EINVAL;

	FUNC2(&adev->dev->kobj,
				&obj->sysfs_attr.attr,
				"ras");
	obj->attr_inuse = 0;
	FUNC1(obj);

	return 0;
}