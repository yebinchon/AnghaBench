
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {scalar_t__ p_pf2vf; } ;
struct TYPE_6__ {int dpm_mutex; TYPE_2__ fw_reserve; } ;
struct TYPE_4__ {int * va; } ;
struct amdgpu_device {TYPE_3__ virt; TYPE_1__ fw_vram_usage; } ;


 int EBADRQC ;
 int IDH_FAIL ;
 int IDH_IRQ_GET_PP_MCLK ;
 int IDH_IRQ_GET_PP_SCLK ;
 int IDH_SUCCESS ;
 int NBIO ;
 int PAGE_SIZE ;


 int RREG32_NO_KIQ (int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int amdgim_is_hwperf (struct amdgpu_device*) ;
 int mmBIF_BX_PF0_MAILBOX_MSGBUF_RCV_DW1 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,char*) ;
 int strcpy (char*,char*) ;
 int strnlen (char*,int) ;
 int xgpu_ai_mailbox_trans_msg (struct amdgpu_device*,int,int ,int ,int ) ;
 int xgpu_ai_poll_msg (struct amdgpu_device*,int ) ;

__attribute__((used)) static int xgpu_ai_get_pp_clk(struct amdgpu_device *adev, u32 type, char *buf)
{
        int r = 0;
        u32 req, val, size;

        if (!amdgim_is_hwperf(adev) || buf == ((void*)0))
                return -EBADRQC;

        switch(type) {
        case 128:
                req = IDH_IRQ_GET_PP_SCLK;
                break;
        case 129:
                req = IDH_IRQ_GET_PP_MCLK;
                break;
        default:
                return -EBADRQC;
        }

        mutex_lock(&adev->virt.dpm_mutex);

        xgpu_ai_mailbox_trans_msg(adev, req, 0, 0, 0);

        r = xgpu_ai_poll_msg(adev, IDH_SUCCESS);
        if (!r && adev->fw_vram_usage.va != ((void*)0)) {
                val = RREG32_NO_KIQ(
                        SOC15_REG_OFFSET(NBIO, 0,
                                         mmBIF_BX_PF0_MAILBOX_MSGBUF_RCV_DW1));
                size = strnlen((((char *)adev->virt.fw_reserve.p_pf2vf) +
                                val), PAGE_SIZE);

                if (size < PAGE_SIZE)
                        strcpy(buf,((char *)adev->virt.fw_reserve.p_pf2vf + val));
                else
                        size = 0;

                r = size;
                goto out;
        }

        r = xgpu_ai_poll_msg(adev, IDH_FAIL);
        if(r)
                pr_info("%s DPM request failed",
                        (type == 128)? "SCLK" : "MCLK");

out:
        mutex_unlock(&adev->virt.dpm_mutex);
        return r;
}
