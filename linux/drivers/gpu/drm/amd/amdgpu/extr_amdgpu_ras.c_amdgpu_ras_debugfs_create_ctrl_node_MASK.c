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
struct drm_minor {int /*<<< orphan*/  debugfs_root; } ;
struct amdgpu_ras {int /*<<< orphan*/  dir; int /*<<< orphan*/  ent; } ;
struct amdgpu_device {TYPE_1__* ddev; } ;
struct TYPE_2__ {struct drm_minor* primary; } ;

/* Variables and functions */
 int S_IRUGO ; 
 int S_IWUGO ; 
 int /*<<< orphan*/  amdgpu_ras_debugfs_ctrl_ops ; 
 struct amdgpu_ras* FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,struct amdgpu_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev)
{
	struct amdgpu_ras *con = FUNC0(adev);
	struct drm_minor *minor = adev->ddev->primary;

	con->dir = FUNC1("ras", minor->debugfs_root);
	con->ent = FUNC2("ras_ctrl", S_IWUGO | S_IRUGO, con->dir,
				       adev, &amdgpu_ras_debugfs_ctrl_ops);
}