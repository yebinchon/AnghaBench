
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int AI_MAIBOX_CONTROL_TRN_OFFSET_BYTE ;
 int WREG8 (int ,int) ;

__attribute__((used)) static void xgpu_ai_mailbox_set_valid(struct amdgpu_device *adev, bool val)
{
 WREG8(AI_MAIBOX_CONTROL_TRN_OFFSET_BYTE, val ? 1 : 0);
}
