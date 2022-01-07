
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kv_power_info {scalar_t__ caps_tcp_ramping; scalar_t__ caps_td_ramping; scalar_t__ caps_db_ramping; scalar_t__ caps_sq_ramping; } ;
struct amdgpu_device {int dummy; } ;


 int DIDT_DB_CTRL0__DIDT_CTRL_EN_MASK ;
 int DIDT_SQ_CTRL0__DIDT_CTRL_EN_MASK ;
 int DIDT_TCP_CTRL0__DIDT_CTRL_EN_MASK ;
 int DIDT_TD_CTRL0__DIDT_CTRL_EN_MASK ;
 int RREG32_DIDT (int ) ;
 int WREG32_DIDT (int ,int ) ;
 int ixDIDT_DB_CTRL0 ;
 int ixDIDT_SQ_CTRL0 ;
 int ixDIDT_TCP_CTRL0 ;
 int ixDIDT_TD_CTRL0 ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static void kv_do_enable_didt(struct amdgpu_device *adev, bool enable)
{
 struct kv_power_info *pi = kv_get_pi(adev);
 u32 data;

 if (pi->caps_sq_ramping) {
  data = RREG32_DIDT(ixDIDT_SQ_CTRL0);
  if (enable)
   data |= DIDT_SQ_CTRL0__DIDT_CTRL_EN_MASK;
  else
   data &= ~DIDT_SQ_CTRL0__DIDT_CTRL_EN_MASK;
  WREG32_DIDT(ixDIDT_SQ_CTRL0, data);
 }

 if (pi->caps_db_ramping) {
  data = RREG32_DIDT(ixDIDT_DB_CTRL0);
  if (enable)
   data |= DIDT_DB_CTRL0__DIDT_CTRL_EN_MASK;
  else
   data &= ~DIDT_DB_CTRL0__DIDT_CTRL_EN_MASK;
  WREG32_DIDT(ixDIDT_DB_CTRL0, data);
 }

 if (pi->caps_td_ramping) {
  data = RREG32_DIDT(ixDIDT_TD_CTRL0);
  if (enable)
   data |= DIDT_TD_CTRL0__DIDT_CTRL_EN_MASK;
  else
   data &= ~DIDT_TD_CTRL0__DIDT_CTRL_EN_MASK;
  WREG32_DIDT(ixDIDT_TD_CTRL0, data);
 }

 if (pi->caps_tcp_ramping) {
  data = RREG32_DIDT(ixDIDT_TCP_CTRL0);
  if (enable)
   data |= DIDT_TCP_CTRL0__DIDT_CTRL_EN_MASK;
  else
   data &= ~DIDT_TCP_CTRL0__DIDT_CTRL_EN_MASK;
  WREG32_DIDT(ixDIDT_TCP_CTRL0, data);
 }
}
