
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
struct kv_power_info {scalar_t__ caps_tcp_ramping; scalar_t__ caps_td_ramping; scalar_t__ caps_db_ramping; scalar_t__ caps_sq_ramping; } ;


 int DIDT_CTRL_EN ;
 int DIDT_DB_CTRL0 ;
 int DIDT_SQ_CTRL0 ;
 int DIDT_TCP_CTRL0 ;
 int DIDT_TD_CTRL0 ;
 int RREG32_DIDT (int ) ;
 int WREG32_DIDT (int ,int ) ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;

__attribute__((used)) static void kv_do_enable_didt(struct radeon_device *rdev, bool enable)
{
 struct kv_power_info *pi = kv_get_pi(rdev);
 u32 data;

 if (pi->caps_sq_ramping) {
  data = RREG32_DIDT(DIDT_SQ_CTRL0);
  if (enable)
   data |= DIDT_CTRL_EN;
  else
   data &= ~DIDT_CTRL_EN;
  WREG32_DIDT(DIDT_SQ_CTRL0, data);
 }

 if (pi->caps_db_ramping) {
  data = RREG32_DIDT(DIDT_DB_CTRL0);
  if (enable)
   data |= DIDT_CTRL_EN;
  else
   data &= ~DIDT_CTRL_EN;
  WREG32_DIDT(DIDT_DB_CTRL0, data);
 }

 if (pi->caps_td_ramping) {
  data = RREG32_DIDT(DIDT_TD_CTRL0);
  if (enable)
   data |= DIDT_CTRL_EN;
  else
   data &= ~DIDT_CTRL_EN;
  WREG32_DIDT(DIDT_TD_CTRL0, data);
 }

 if (pi->caps_tcp_ramping) {
  data = RREG32_DIDT(DIDT_TCP_CTRL0);
  if (enable)
   data |= DIDT_CTRL_EN;
  else
   data &= ~DIDT_CTRL_EN;
  WREG32_DIDT(DIDT_TCP_CTRL0, data);
 }
}
