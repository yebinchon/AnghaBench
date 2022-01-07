
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int RREG32_SOC15 (int ,int ,int ) ;
 int SMUIO ;
 int mmCKSVII2C_IC_CLR_INTR ;
 struct amdgpu_device* to_amdgpu_device (struct i2c_adapter*) ;

__attribute__((used)) static void smu_v11_0_i2c_clear_status(struct i2c_adapter *control)
{
 struct amdgpu_device *adev = to_amdgpu_device(control);

 {
  RREG32_SOC15(SMUIO, 0, mmCKSVII2C_IC_CLR_INTR);

 }
}
