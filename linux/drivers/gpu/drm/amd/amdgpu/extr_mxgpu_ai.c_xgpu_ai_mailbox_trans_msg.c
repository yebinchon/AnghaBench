
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int u32 ;
struct amdgpu_device {int dummy; } ;
typedef enum idh_request { ____Placeholder_idh_request } idh_request ;


 int BIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW0 ;
 int MSGBUF_DATA ;
 int NBIO ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32_NO_KIQ (int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32_NO_KIQ (int ,int ) ;
 int mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW0 ;
 int mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW1 ;
 int mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW2 ;
 int mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW3 ;
 int msleep (int) ;
 int pr_err (char*,...) ;
 int xgpu_ai_mailbox_set_valid (struct amdgpu_device*,int) ;
 scalar_t__ xgpu_ai_peek_ack (struct amdgpu_device*) ;
 int xgpu_ai_poll_ack (struct amdgpu_device*) ;

__attribute__((used)) static void xgpu_ai_mailbox_trans_msg (struct amdgpu_device *adev,
       enum idh_request req, u32 data1, u32 data2, u32 data3) {
 u32 reg;
 int r;
 uint8_t trn;







 do {
  xgpu_ai_mailbox_set_valid(adev, 0);
  trn = xgpu_ai_peek_ack(adev);
  if (trn) {
   pr_err("trn=%x ACK should not assert! wait again !\n", trn);
   msleep(1);
  }
 } while(trn);

 reg = RREG32_NO_KIQ(SOC15_REG_OFFSET(NBIO, 0,
          mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW0));
 reg = REG_SET_FIELD(reg, BIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW0,
       MSGBUF_DATA, req);
 WREG32_NO_KIQ(SOC15_REG_OFFSET(NBIO, 0, mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW0),
        reg);
 WREG32_NO_KIQ(SOC15_REG_OFFSET(NBIO, 0, mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW1),
    data1);
 WREG32_NO_KIQ(SOC15_REG_OFFSET(NBIO, 0, mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW2),
    data2);
 WREG32_NO_KIQ(SOC15_REG_OFFSET(NBIO, 0, mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW3),
    data3);

 xgpu_ai_mailbox_set_valid(adev, 1);


 r = xgpu_ai_poll_ack(adev);
 if (r)
  pr_err("Doesn't get ack from pf, continue\n");

 xgpu_ai_mailbox_set_valid(adev, 0);
}
