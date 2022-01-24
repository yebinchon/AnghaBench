#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  debugfs_name; } ;
struct ras_manager {TYPE_1__ fs_data; scalar_t__ ent; } ;
struct ras_fs_if {int /*<<< orphan*/  debugfs_name; int /*<<< orphan*/  head; } ;
struct amdgpu_ras {int /*<<< orphan*/  dir; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int S_IRUGO ; 
 int S_IWUGO ; 
 int /*<<< orphan*/  amdgpu_ras_debugfs_ops ; 
 struct ras_manager* FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ *) ; 
 struct amdgpu_ras* FUNC1 (struct amdgpu_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct ras_manager*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ras_manager*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct amdgpu_device *adev,
		struct ras_fs_if *head)
{
	struct amdgpu_ras *con = FUNC1(adev);
	struct ras_manager *obj = FUNC0(adev, &head->head);

	if (!obj || obj->ent)
		return;

	FUNC3(obj);

	FUNC4(obj->fs_data.debugfs_name,
			head->debugfs_name,
			sizeof(obj->fs_data.debugfs_name));

	obj->ent = FUNC2(obj->fs_data.debugfs_name,
				       S_IWUGO | S_IRUGO, con->dir, obj,
				       &amdgpu_ras_debugfs_ops);
}