
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int MAILBOX_CONTROL ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32_NO_KIQ (int ) ;
 int TRN_MSG_VALID ;
 int WREG32_NO_KIQ (int ,int ) ;
 int mmMAILBOX_CONTROL ;

__attribute__((used)) static void xgpu_vi_mailbox_set_valid(struct amdgpu_device *adev, bool val)
{
 u32 reg;

 reg = RREG32_NO_KIQ(mmMAILBOX_CONTROL);
 reg = REG_SET_FIELD(reg, MAILBOX_CONTROL,
       TRN_MSG_VALID, val ? 1 : 0);
 WREG32_NO_KIQ(mmMAILBOX_CONTROL, reg);
}
