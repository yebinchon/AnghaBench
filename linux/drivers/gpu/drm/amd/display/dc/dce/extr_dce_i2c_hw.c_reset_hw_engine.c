
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_i2c_hw {int dummy; } ;


 int DC_I2C_CONTROL ;
 int DC_I2C_SW_STATUS_RESET ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;

__attribute__((used)) static inline void reset_hw_engine(struct dce_i2c_hw *dce_i2c_hw)
{
 REG_UPDATE_2(DC_I2C_CONTROL,
       DC_I2C_SW_STATUS_RESET, 1,
       DC_I2C_SW_STATUS_RESET, 1);
}
