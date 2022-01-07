
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct i2c_adapter {int dummy; } ;


 int DRM_ERROR (char*,scalar_t__) ;
 int I2C_NO_STOP ;
 scalar_t__ I2C_OK ;
 int I2C_RESTART ;
 scalar_t__ smu_v11_0_i2c_receive (struct i2c_adapter*,int ,int *,scalar_t__,int ) ;
 scalar_t__ smu_v11_0_i2c_transmit (struct i2c_adapter*,int ,int *,int,int ) ;

__attribute__((used)) static uint32_t smu_v11_0_i2c_eeprom_read_data(struct i2c_adapter *control,
            uint8_t address,
            uint8_t *data,
            uint32_t numbytes)
{
 uint32_t ret = 0;


 ret = smu_v11_0_i2c_transmit(control, address, data, 2, I2C_NO_STOP);
 if (ret != I2C_OK)
  goto Fail;


 ret = smu_v11_0_i2c_receive(control, address, data + 2, numbytes - 2,
        I2C_RESTART);

Fail:
 if (ret != I2C_OK)
  DRM_ERROR("ReadData() - I2C error occurred :%x", ret);

 return ret;
}
