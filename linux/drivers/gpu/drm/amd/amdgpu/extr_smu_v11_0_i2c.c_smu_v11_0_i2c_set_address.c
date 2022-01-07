
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct i2c_adapter {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int SMUIO ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int mmCKSVII2C_IC_TAR ;
 struct amdgpu_device* to_amdgpu_device (struct i2c_adapter*) ;

__attribute__((used)) static void smu_v11_0_i2c_set_address(struct i2c_adapter *control, uint8_t address)
{
 struct amdgpu_device *adev = to_amdgpu_device(control);


 address >>= 1;
 WREG32_SOC15(SMUIO, 0, mmCKSVII2C_IC_TAR, (address & 0xFF));
}
