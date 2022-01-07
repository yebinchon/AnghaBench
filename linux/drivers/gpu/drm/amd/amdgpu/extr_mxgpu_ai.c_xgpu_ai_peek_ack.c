
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct amdgpu_device {int dummy; } ;


 int AI_MAIBOX_CONTROL_TRN_OFFSET_BYTE ;
 int RREG8 (int ) ;

__attribute__((used)) static uint8_t xgpu_ai_peek_ack(struct amdgpu_device *adev) {
 return RREG8(AI_MAIBOX_CONTROL_TRN_OFFSET_BYTE) & 2;
}
