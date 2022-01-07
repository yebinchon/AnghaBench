
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct i2c_adapter {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int CKSVII2C_IC_CON ;
 int IC_10BITADDR_MASTER ;
 int IC_10BITADDR_SLAVE ;
 int IC_MASTER_MODE ;
 int IC_MAX_SPEED_MODE ;
 int IC_RESTART_EN ;
 int IC_SLAVE_DISABLE ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int SMUIO ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmCKSVII2C_IC_CON ;
 struct amdgpu_device* to_amdgpu_device (struct i2c_adapter*) ;

__attribute__((used)) static void smu_v11_0_i2c_configure(struct i2c_adapter *control)
{
 struct amdgpu_device *adev = to_amdgpu_device(control);
 uint32_t reg = 0;

 reg = REG_SET_FIELD(reg, CKSVII2C_IC_CON, IC_SLAVE_DISABLE, 1);
 reg = REG_SET_FIELD(reg, CKSVII2C_IC_CON, IC_RESTART_EN, 1);
 reg = REG_SET_FIELD(reg, CKSVII2C_IC_CON, IC_10BITADDR_MASTER, 0);
 reg = REG_SET_FIELD(reg, CKSVII2C_IC_CON, IC_10BITADDR_SLAVE, 0);

 reg = REG_SET_FIELD(reg, CKSVII2C_IC_CON, IC_MAX_SPEED_MODE, 2);
 reg = REG_SET_FIELD(reg, CKSVII2C_IC_CON, IC_MASTER_MODE, 1);

 WREG32_SOC15(SMUIO, 0, mmCKSVII2C_IC_CON, reg);
}
