
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int SMUIO ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int mmCKSVII2C_IC_FS_SPKLEN ;
 int mmCKSVII2C_IC_SDA_HOLD ;
 int mmCKSVII2C_IC_SS_SCL_HCNT ;
 int mmCKSVII2C_IC_SS_SCL_LCNT ;
 struct amdgpu_device* to_amdgpu_device (struct i2c_adapter*) ;

__attribute__((used)) static void smu_v11_0_i2c_set_clock(struct i2c_adapter *control)
{
 struct amdgpu_device *adev = to_amdgpu_device(control);
 WREG32_SOC15(SMUIO, 0, mmCKSVII2C_IC_FS_SPKLEN, 2);
 WREG32_SOC15(SMUIO, 0, mmCKSVII2C_IC_SS_SCL_HCNT, 120);
 WREG32_SOC15(SMUIO, 0, mmCKSVII2C_IC_SS_SCL_LCNT, 130);
 WREG32_SOC15(SMUIO, 0, mmCKSVII2C_IC_SDA_HOLD, 20);
}
