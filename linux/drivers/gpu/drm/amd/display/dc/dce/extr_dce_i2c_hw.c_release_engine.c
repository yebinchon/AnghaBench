
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dce_i2c_hw {int engine_keep_power_up_count; int original_speed; } ;


 int DC_I2C_ARBITRATION ;
 int DC_I2C_CONTROL ;
 int DC_I2C_DDC1_ENABLE ;
 int DC_I2C_SOFT_RESET ;
 int DC_I2C_SW_DONE_USING_I2C_REG ;
 int DC_I2C_SW_STATUS ;
 int DC_I2C_SW_STATUS_RESET ;
 int DC_I2C_SW_USE_I2C_REG_REQ ;
 int FN (int ,int ) ;
 int REG_GET (int ,int ,int*) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 int REG_UPDATE_N (int ,int,int ,int ) ;
 int SETUP ;
 int set_speed (struct dce_i2c_hw*,int ) ;

__attribute__((used)) static void release_engine(
 struct dce_i2c_hw *dce_i2c_hw)
{
 bool safe_to_reset;



 set_speed(dce_i2c_hw, dce_i2c_hw->original_speed);



 {
  uint32_t i2c_sw_status = 0;

  REG_GET(DC_I2C_SW_STATUS, DC_I2C_SW_STATUS, &i2c_sw_status);

  safe_to_reset = (i2c_sw_status == 1);
 }

 if (safe_to_reset)
  REG_UPDATE_2(DC_I2C_CONTROL,
        DC_I2C_SOFT_RESET, 1,
        DC_I2C_SW_STATUS_RESET, 1);
 else
  REG_UPDATE(DC_I2C_CONTROL, DC_I2C_SW_STATUS_RESET, 1);

 if (!dce_i2c_hw->engine_keep_power_up_count)
  REG_UPDATE_N(SETUP, 1, FN(SETUP, DC_I2C_DDC1_ENABLE), 0);

 REG_UPDATE_2(DC_I2C_ARBITRATION, DC_I2C_SW_DONE_USING_I2C_REG, 1,
  DC_I2C_SW_USE_I2C_REG_REQ, 0);

}
