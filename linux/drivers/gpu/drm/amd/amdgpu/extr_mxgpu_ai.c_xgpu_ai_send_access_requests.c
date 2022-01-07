
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int checksum_key; } ;
struct TYPE_4__ {TYPE_1__ fw_reserve; } ;
struct amdgpu_device {TYPE_2__ virt; } ;
typedef enum idh_request { ____Placeholder_idh_request } idh_request ;


 int IDH_READY_TO_ACCESS_GPU ;
 int IDH_REQ_GPU_FINI_ACCESS ;
 int IDH_REQ_GPU_INIT_ACCESS ;
 int IDH_REQ_GPU_RESET_ACCESS ;
 int NBIO ;
 int RREG32_NO_KIQ (int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int mmBIF_BX_PF0_MAILBOX_MSGBUF_RCV_DW2 ;
 int pr_err (char*) ;
 int xgpu_ai_mailbox_trans_msg (struct amdgpu_device*,int,int ,int ,int ) ;
 int xgpu_ai_poll_msg (struct amdgpu_device*,int ) ;

__attribute__((used)) static int xgpu_ai_send_access_requests(struct amdgpu_device *adev,
     enum idh_request req)
{
 int r;

 xgpu_ai_mailbox_trans_msg(adev, req, 0, 0, 0);


 if (req == IDH_REQ_GPU_INIT_ACCESS ||
  req == IDH_REQ_GPU_FINI_ACCESS ||
  req == IDH_REQ_GPU_RESET_ACCESS) {
  r = xgpu_ai_poll_msg(adev, IDH_READY_TO_ACCESS_GPU);
  if (r) {
   pr_err("Doesn't get READY_TO_ACCESS_GPU from pf, give up\n");
   return r;
  }

  if (req == IDH_REQ_GPU_INIT_ACCESS || req == IDH_REQ_GPU_RESET_ACCESS) {
   adev->virt.fw_reserve.checksum_key =
    RREG32_NO_KIQ(SOC15_REG_OFFSET(NBIO, 0,
     mmBIF_BX_PF0_MAILBOX_MSGBUF_RCV_DW2));
  }
 }

 return 0;
}
