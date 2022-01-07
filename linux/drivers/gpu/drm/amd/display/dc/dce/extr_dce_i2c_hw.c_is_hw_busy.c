
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct dce_i2c_hw {int dummy; } ;


 scalar_t__ DC_I2C_STATUS__DC_I2C_STATUS_IDLE ;
 int DC_I2C_SW_STATUS ;
 int REG_GET (int ,int ,scalar_t__*) ;
 scalar_t__ is_engine_available (struct dce_i2c_hw*) ;

__attribute__((used)) static bool is_hw_busy(struct dce_i2c_hw *dce_i2c_hw)
{
 uint32_t i2c_sw_status = 0;

 REG_GET(DC_I2C_SW_STATUS, DC_I2C_SW_STATUS, &i2c_sw_status);
 if (i2c_sw_status == DC_I2C_STATUS__DC_I2C_STATUS_IDLE)
  return 0;

 if (is_engine_available(dce_i2c_hw))
  return 0;

 return 1;
}
