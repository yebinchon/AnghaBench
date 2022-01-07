
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct i2c_adapter {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int ABRT_7B_ADDR_NOACK ;
 int ABRT_TXDATA_NOACK ;
 int CKSVII2C_IC_INTR_STAT ;
 int CKSVII2C_IC_STATUS ;
 int CKSVII2C_IC_TX_ABRT_SOURCE ;
 int DRM_INFO (char*,int ) ;
 int I2C_ABORT ;
 int I2C_NAK_7B_ADDR_NOACK ;
 int I2C_NAK_TXDATA_NOACK ;
 int I2C_OK ;
 int I2C_SW_TIMEOUT ;
 int REG_GET_FIELD (int ,int ,int ) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int R_TX_ABRT ;
 int SMUIO ;
 int TFE ;
 unsigned long jiffies ;
 int mmCKSVII2C_IC_INTR_STAT ;
 int mmCKSVII2C_IC_STATUS ;
 int mmCKSVII2C_IC_TX_ABRT_SOURCE ;
 unsigned long msecs_to_jiffies (int) ;
 int smu_v11_0_i2c_clear_status (struct i2c_adapter*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 struct amdgpu_device* to_amdgpu_device (struct i2c_adapter*) ;

__attribute__((used)) static uint32_t smu_v11_0_i2c_poll_tx_status(struct i2c_adapter *control)
{
 struct amdgpu_device *adev = to_amdgpu_device(control);
 uint32_t ret = I2C_OK;
 uint32_t reg, reg_c_tx_abrt_source;


 unsigned long timeout_counter = jiffies + msecs_to_jiffies(20);

 do {
  if (time_after(jiffies, timeout_counter)) {
   ret |= I2C_SW_TIMEOUT;
   break;
  }

  reg = RREG32_SOC15(SMUIO, 0, mmCKSVII2C_IC_STATUS);

 } while (REG_GET_FIELD(reg, CKSVII2C_IC_STATUS, TFE) == 0);

 if (ret != I2C_OK)
  return ret;


 reg = RREG32_SOC15(SMUIO, 0, mmCKSVII2C_IC_INTR_STAT);

 if (REG_GET_FIELD(reg, CKSVII2C_IC_INTR_STAT, R_TX_ABRT) == 1) {
  reg_c_tx_abrt_source = RREG32_SOC15(SMUIO, 0, mmCKSVII2C_IC_TX_ABRT_SOURCE);
  DRM_INFO("TX was terminated, IC_TX_ABRT_SOURCE val is:%x", reg_c_tx_abrt_source);


  if (REG_GET_FIELD(reg_c_tx_abrt_source,
      CKSVII2C_IC_TX_ABRT_SOURCE,
      ABRT_TXDATA_NOACK) == 1) {

   ret |= I2C_NAK_TXDATA_NOACK;

  } else if (REG_GET_FIELD(reg_c_tx_abrt_source,
      CKSVII2C_IC_TX_ABRT_SOURCE,
      ABRT_7B_ADDR_NOACK) == 1) {

   ret |= I2C_NAK_7B_ADDR_NOACK;
  } else {
   ret |= I2C_ABORT;
  }

  smu_v11_0_i2c_clear_status(control);
 }

 return ret;
}
