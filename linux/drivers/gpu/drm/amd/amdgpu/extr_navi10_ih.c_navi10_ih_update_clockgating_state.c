
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_IH_CG ;
 int DBUS_MUX_CLK_SOFT_OVERRIDE ;
 int DYN_CLK_SOFT_OVERRIDE ;
 int IH_CLK_CTRL ;
 int LIMIT_SMN_CLK_SOFT_OVERRIDE ;
 int OSSSYS ;
 int OSSSYS_SHARE_CLK_SOFT_OVERRIDE ;
 int REG_CLK_SOFT_OVERRIDE ;
 scalar_t__ REG_SET_FIELD (scalar_t__,int ,int ,scalar_t__) ;
 scalar_t__ RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,scalar_t__) ;
 int mmIH_CLK_CTRL ;

__attribute__((used)) static void navi10_ih_update_clockgating_state(struct amdgpu_device *adev,
            bool enable)
{
 uint32_t data, def, field_val;

 if (adev->cg_flags & AMD_CG_SUPPORT_IH_CG) {
  def = data = RREG32_SOC15(OSSSYS, 0, mmIH_CLK_CTRL);
  field_val = enable ? 0 : 1;
  data = REG_SET_FIELD(data, IH_CLK_CTRL,
         DBUS_MUX_CLK_SOFT_OVERRIDE, field_val);
  data = REG_SET_FIELD(data, IH_CLK_CTRL,
         OSSSYS_SHARE_CLK_SOFT_OVERRIDE, field_val);
  data = REG_SET_FIELD(data, IH_CLK_CTRL,
         LIMIT_SMN_CLK_SOFT_OVERRIDE, field_val);
  data = REG_SET_FIELD(data, IH_CLK_CTRL,
         DYN_CLK_SOFT_OVERRIDE, field_val);
  data = REG_SET_FIELD(data, IH_CLK_CTRL,
         REG_CLK_SOFT_OVERRIDE, field_val);
  if (def != data)
   WREG32_SOC15(OSSSYS, 0, mmIH_CLK_CTRL, data);
 }

 return;
}
