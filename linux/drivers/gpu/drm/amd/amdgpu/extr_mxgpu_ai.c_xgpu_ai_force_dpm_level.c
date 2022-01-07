
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dpm_mutex; } ;
struct amdgpu_device {TYPE_1__ virt; } ;


 int EBADRQC ;
 int IDH_FAIL ;
 int IDH_IRQ_FORCE_DPM_LEVEL ;
 int IDH_SUCCESS ;
 int amdgim_is_hwperf (struct amdgpu_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*) ;
 int xgpu_ai_mailbox_trans_msg (struct amdgpu_device*,int ,int ,int ,int ) ;
 int xgpu_ai_poll_msg (struct amdgpu_device*,int ) ;

__attribute__((used)) static int xgpu_ai_force_dpm_level(struct amdgpu_device *adev, u32 level)
{
        int r = 0;
        u32 req = IDH_IRQ_FORCE_DPM_LEVEL;

        if (!amdgim_is_hwperf(adev))
                return -EBADRQC;

        mutex_lock(&adev->virt.dpm_mutex);
        xgpu_ai_mailbox_trans_msg(adev, req, level, 0, 0);

        r = xgpu_ai_poll_msg(adev, IDH_SUCCESS);
        if (!r)
                goto out;

        r = xgpu_ai_poll_msg(adev, IDH_FAIL);
        if (!r)
                pr_info("DPM request failed");
        else
                pr_info("Mailbox is broken");

out:
        mutex_unlock(&adev->virt.dpm_mutex);
        return r;
}
