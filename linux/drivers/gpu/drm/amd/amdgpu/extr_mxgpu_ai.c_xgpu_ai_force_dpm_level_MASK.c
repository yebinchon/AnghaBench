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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dpm_mutex; } ;
struct amdgpu_device {TYPE_1__ virt; } ;

/* Variables and functions */
 int EBADRQC ; 
 int /*<<< orphan*/  IDH_FAIL ; 
 int /*<<< orphan*/  IDH_IRQ_FORCE_DPM_LEVEL ; 
 int /*<<< orphan*/  IDH_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct amdgpu_device *adev, u32 level)
{
        int r = 0;
        u32 req = IDH_IRQ_FORCE_DPM_LEVEL;

        if (!FUNC0(adev))
                return -EBADRQC;

        FUNC1(&adev->virt.dpm_mutex);
        FUNC4(adev, req, level, 0, 0);

        r = FUNC5(adev, IDH_SUCCESS);
        if (!r)
                goto out;

        r = FUNC5(adev, IDH_FAIL);
        if (!r)
                FUNC3("DPM request failed");
        else
                FUNC3("Mailbox is broken");

out:
        FUNC2(&adev->virt.dpm_mutex);
        return r;
}