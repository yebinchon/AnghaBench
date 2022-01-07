
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct i2c_adapter {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int CKSVII2C_IC_DATA_CMD ;
 int CKSVII2C_IC_STATUS ;
 int CMD ;
 int DAT ;
 int DRM_DEBUG_DRIVER (char*,int ,int) ;
 int DRM_ERROR (char*) ;
 int DRM_UT_DRIVER ;
 int DUMP_PREFIX_NONE ;
 int I2C_NAK_7B_ADDR_NOACK ;
 int I2C_NAK_TXDATA_NOACK ;
 int I2C_NO_STOP ;
 int I2C_OK ;
 int I2C_RESTART ;
 int I2C_SW_TIMEOUT ;
 int KERN_INFO ;
 scalar_t__ REG_GET_FIELD (int,int ,int ) ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RESTART ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int SMUIO ;
 int STOP ;
 int TFNF ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int drm_debug ;
 unsigned long jiffies ;
 int mmCKSVII2C_IC_DATA_CMD ;
 int mmCKSVII2C_IC_STATUS ;
 unsigned long msecs_to_jiffies (int) ;
 int print_hex_dump (int ,char*,int ,int,int,int*,int,int) ;
 int smu_v11_0_i2c_clear_status (struct i2c_adapter*) ;
 int smu_v11_0_i2c_enable (struct i2c_adapter*,int) ;
 int smu_v11_0_i2c_poll_tx_status (struct i2c_adapter*) ;
 int smu_v11_0_i2c_set_address (struct i2c_adapter*,int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 struct amdgpu_device* to_amdgpu_device (struct i2c_adapter*) ;

__attribute__((used)) static uint32_t smu_v11_0_i2c_transmit(struct i2c_adapter *control,
      uint8_t address, uint8_t *data,
      uint32_t numbytes, uint32_t i2c_flag)
{
 struct amdgpu_device *adev = to_amdgpu_device(control);
 uint32_t bytes_sent, reg, ret = 0;
 unsigned long timeout_counter;

 bytes_sent = 0;

 DRM_DEBUG_DRIVER("I2C_Transmit(), address = %x, bytes = %d , data: ",
   (uint16_t)address, numbytes);

 if (drm_debug & DRM_UT_DRIVER) {
  print_hex_dump(KERN_INFO, "data: ", DUMP_PREFIX_NONE,
          16, 1, data, numbytes, 0);
 }


 smu_v11_0_i2c_set_address(control, address);

 smu_v11_0_i2c_enable(control, 1);


 smu_v11_0_i2c_clear_status(control);


 timeout_counter = jiffies + msecs_to_jiffies(20);

 while (numbytes > 0) {
  reg = RREG32_SOC15(SMUIO, 0, mmCKSVII2C_IC_STATUS);
  if (REG_GET_FIELD(reg, CKSVII2C_IC_STATUS, TFNF)) {
   do {
    reg = 0;




    if (bytes_sent == 0)
     reg = REG_SET_FIELD(reg, CKSVII2C_IC_DATA_CMD, RESTART,
           (i2c_flag & I2C_RESTART) ? 1 : 0);
    reg = REG_SET_FIELD(reg, CKSVII2C_IC_DATA_CMD, DAT, data[bytes_sent]);


    if (numbytes == 1)

     reg = REG_SET_FIELD(reg, CKSVII2C_IC_DATA_CMD, STOP,
           (i2c_flag & I2C_NO_STOP) ? 0 : 1);

    reg = REG_SET_FIELD(reg, CKSVII2C_IC_DATA_CMD, CMD, 0);
    WREG32_SOC15(SMUIO, 0, mmCKSVII2C_IC_DATA_CMD, reg);


    bytes_sent++;
    numbytes--;

    reg = RREG32_SOC15(SMUIO, 0, mmCKSVII2C_IC_STATUS);

   } while (numbytes && REG_GET_FIELD(reg, CKSVII2C_IC_STATUS, TFNF));
  }





  if (time_after(jiffies, timeout_counter)) {
   ret |= I2C_SW_TIMEOUT;
   goto Err;
  }
 }

 ret = smu_v11_0_i2c_poll_tx_status(control);

Err:

 if (ret != I2C_OK) {
  if (ret & I2C_SW_TIMEOUT)
   DRM_ERROR("TIMEOUT ERROR !!!");

  if (ret & I2C_NAK_7B_ADDR_NOACK)
   DRM_ERROR("Received I2C_NAK_7B_ADDR_NOACK !!!");


  if (ret & I2C_NAK_TXDATA_NOACK)
   DRM_ERROR("Received I2C_NAK_TXDATA_NOACK !!!");
 }

 return ret;
}
