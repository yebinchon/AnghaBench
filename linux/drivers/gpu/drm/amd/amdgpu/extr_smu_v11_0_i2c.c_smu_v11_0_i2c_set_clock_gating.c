
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct i2c_adapter {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int SMUIO ;
 int SMUIO_PWRMGT ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int i2c_clk_gate_en ;
 int mmSMUIO_PWRMGT ;
 struct amdgpu_device* to_amdgpu_device (struct i2c_adapter*) ;

__attribute__((used)) static void smu_v11_0_i2c_set_clock_gating(struct i2c_adapter *control, bool en)
{
 struct amdgpu_device *adev = to_amdgpu_device(control);
 uint32_t reg = RREG32_SOC15(SMUIO, 0, mmSMUIO_PWRMGT);

 reg = REG_SET_FIELD(reg, SMUIO_PWRMGT, i2c_clk_gate_en, en ? 1 : 0);
 WREG32_SOC15(SMUIO, 0, mmSMUIO_PWRMGT, reg);
}
