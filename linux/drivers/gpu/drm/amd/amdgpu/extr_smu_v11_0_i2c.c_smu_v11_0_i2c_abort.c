
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct i2c_adapter {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int ABORT ;
 int CKSVII2C_IC_ENABLE ;
 int DRM_DEBUG_DRIVER (char*) ;
 int ENABLE ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int SMUIO ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmCKSVII2C_IC_ENABLE ;
 struct amdgpu_device* to_amdgpu_device (struct i2c_adapter*) ;

__attribute__((used)) static void smu_v11_0_i2c_abort(struct i2c_adapter *control)
{
 struct amdgpu_device *adev = to_amdgpu_device(control);
 uint32_t reg = 0;


 reg = REG_SET_FIELD(reg, CKSVII2C_IC_ENABLE, ENABLE, 1);
 WREG32_SOC15(SMUIO, 0, mmCKSVII2C_IC_ENABLE, reg);


 reg = REG_SET_FIELD(reg, CKSVII2C_IC_ENABLE, ABORT, 1);
 WREG32_SOC15(SMUIO, 0, mmCKSVII2C_IC_ENABLE, reg);

 DRM_DEBUG_DRIVER("I2C_Abort() Done.");
}
