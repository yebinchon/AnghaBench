
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dce_i2c_hw {int reference_frequency; int default_speed; } ;


 int DC_I2C_DDC1_PRESCALE ;
 int REG_GET (int ,int ,int*) ;
 int SPEED ;

__attribute__((used)) static uint32_t get_speed(
 const struct dce_i2c_hw *dce_i2c_hw)
{
 uint32_t pre_scale = 0;

 REG_GET(SPEED, DC_I2C_DDC1_PRESCALE, &pre_scale);



 return pre_scale ?
  dce_i2c_hw->reference_frequency / pre_scale :
  dce_i2c_hw->default_speed;
}
