
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;
typedef enum idh_request { ____Placeholder_idh_request } idh_request ;


 int MAILBOX_MSGBUF_TRN_DW0 ;
 int MSGBUF_DATA ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32_NO_KIQ (int ) ;
 int WREG32_NO_KIQ (int ,int ) ;
 int mmMAILBOX_MSGBUF_TRN_DW0 ;
 int xgpu_vi_mailbox_set_valid (struct amdgpu_device*,int) ;

__attribute__((used)) static void xgpu_vi_mailbox_trans_msg(struct amdgpu_device *adev,
          enum idh_request req)
{
 u32 reg;

 reg = RREG32_NO_KIQ(mmMAILBOX_MSGBUF_TRN_DW0);
 reg = REG_SET_FIELD(reg, MAILBOX_MSGBUF_TRN_DW0,
       MSGBUF_DATA, req);
 WREG32_NO_KIQ(mmMAILBOX_MSGBUF_TRN_DW0, reg);

 xgpu_vi_mailbox_set_valid(adev, 1);
}
