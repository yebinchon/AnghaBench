
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct dce_i2c_hw {TYPE_1__* masks; } ;
typedef enum i2c_channel_operation_result { ____Placeholder_i2c_channel_operation_result } i2c_channel_operation_result ;
struct TYPE_2__ {scalar_t__ DC_I2C_SW_STOPPED_ON_NACK; scalar_t__ DC_I2C_SW_TIMEOUT; scalar_t__ DC_I2C_SW_ABORTED; scalar_t__ DC_I2C_SW_DONE; } ;


 scalar_t__ DC_I2C_STATUS__DC_I2C_STATUS_USED_BY_SW ;
 int DC_I2C_SW_STATUS ;
 int I2C_CHANNEL_OPERATION_ENGINE_BUSY ;
 int I2C_CHANNEL_OPERATION_FAILED ;
 int I2C_CHANNEL_OPERATION_NO_RESPONSE ;
 int I2C_CHANNEL_OPERATION_SUCCEEDED ;
 int I2C_CHANNEL_OPERATION_TIMEOUT ;
 scalar_t__ REG_GET (int ,int ,scalar_t__*) ;

__attribute__((used)) static enum i2c_channel_operation_result get_channel_status(
 struct dce_i2c_hw *dce_i2c_hw,
 uint8_t *returned_bytes)
{
 uint32_t i2c_sw_status = 0;
 uint32_t value =
  REG_GET(DC_I2C_SW_STATUS, DC_I2C_SW_STATUS, &i2c_sw_status);
 if (i2c_sw_status == DC_I2C_STATUS__DC_I2C_STATUS_USED_BY_SW)
  return I2C_CHANNEL_OPERATION_ENGINE_BUSY;
 else if (value & dce_i2c_hw->masks->DC_I2C_SW_STOPPED_ON_NACK)
  return I2C_CHANNEL_OPERATION_NO_RESPONSE;
 else if (value & dce_i2c_hw->masks->DC_I2C_SW_TIMEOUT)
  return I2C_CHANNEL_OPERATION_TIMEOUT;
 else if (value & dce_i2c_hw->masks->DC_I2C_SW_ABORTED)
  return I2C_CHANNEL_OPERATION_FAILED;
 else if (value & dce_i2c_hw->masks->DC_I2C_SW_DONE)
  return I2C_CHANNEL_OPERATION_SUCCEEDED;





 return I2C_CHANNEL_OPERATION_SUCCEEDED;
}
