
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct i2c_adapter {int dummy; } ;


 int DRM_ERROR (char*,scalar_t__) ;
 scalar_t__ I2C_OK ;
 int msleep (int) ;
 scalar_t__ smu_v11_0_i2c_transmit (struct i2c_adapter*,int ,int *,scalar_t__,int ) ;

__attribute__((used)) static uint32_t smu_v11_0_i2c_eeprom_write_data(struct i2c_adapter *control,
      uint8_t address,
      uint8_t *data,
      uint32_t numbytes)
{
 uint32_t ret;

 ret = smu_v11_0_i2c_transmit(control, address, data, numbytes, 0);

 if (ret != I2C_OK)
  DRM_ERROR("WriteI2CData() - I2C error occurred :%x", ret);
 else
  msleep(10);

 return ret;

}
