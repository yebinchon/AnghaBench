
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct i2c_adapter {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int CKSVII2C_IC_ENABLE ;
 int CKSVII2C_IC_ENABLE_STATUS ;
 int ENABLE ;
 int IC_EN ;
 int REG_GET_FIELD (int ,int ,int ) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int SMUIO ;
 int mmCKSVII2C_IC_ENABLE ;
 int mmCKSVII2C_IC_ENABLE_STATUS ;
 int smu_v11_0_i2c_abort (struct i2c_adapter*) ;
 int smu_v11_0_i2c_enable (struct i2c_adapter*,int) ;
 struct amdgpu_device* to_amdgpu_device (struct i2c_adapter*) ;

__attribute__((used)) static void smu_v11_0_i2c_fini(struct i2c_adapter *control)
{
 struct amdgpu_device *adev = to_amdgpu_device(control);
 uint32_t reg_ic_enable_status, reg_ic_enable;

 smu_v11_0_i2c_enable(control, 0);


 reg_ic_enable_status = RREG32_SOC15(SMUIO, 0, mmCKSVII2C_IC_ENABLE_STATUS);
 reg_ic_enable = RREG32_SOC15(SMUIO, 0, mmCKSVII2C_IC_ENABLE);

 if ((REG_GET_FIELD(reg_ic_enable, CKSVII2C_IC_ENABLE, ENABLE) == 0) &&
     (REG_GET_FIELD(reg_ic_enable_status,
      CKSVII2C_IC_ENABLE_STATUS, IC_EN) == 1)) {




  smu_v11_0_i2c_abort(control);
 }
}
