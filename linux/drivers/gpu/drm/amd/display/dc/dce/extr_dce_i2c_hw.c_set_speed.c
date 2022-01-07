
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dce_i2c_hw {int reference_frequency; TYPE_1__* masks; } ;
struct TYPE_2__ {scalar_t__ DC_I2C_DDC1_START_STOP_TIMING_CNTL; } ;


 int DC_I2C_DDC1_PRESCALE ;
 int DC_I2C_DDC1_SPEED ;
 int DC_I2C_DDC1_START_STOP_TIMING_CNTL ;
 int DC_I2C_DDC1_THRESHOLD ;
 int FN (int ,int ) ;
 int REG_UPDATE_N (int ,int,int ,int,int ,int,...) ;
 int SPEED ;

__attribute__((used)) static void set_speed(
 struct dce_i2c_hw *dce_i2c_hw,
 uint32_t speed)
{

 if (speed) {
  if (dce_i2c_hw->masks->DC_I2C_DDC1_START_STOP_TIMING_CNTL)
   REG_UPDATE_N(SPEED, 3,
         FN(DC_I2C_DDC1_SPEED, DC_I2C_DDC1_PRESCALE), dce_i2c_hw->reference_frequency / speed,
         FN(DC_I2C_DDC1_SPEED, DC_I2C_DDC1_THRESHOLD), 2,
         FN(DC_I2C_DDC1_SPEED, DC_I2C_DDC1_START_STOP_TIMING_CNTL), speed > 50 ? 2:1);
  else
   REG_UPDATE_N(SPEED, 2,
         FN(DC_I2C_DDC1_SPEED, DC_I2C_DDC1_PRESCALE), dce_i2c_hw->reference_frequency / speed,
         FN(DC_I2C_DDC1_SPEED, DC_I2C_DDC1_THRESHOLD), 2);
 }
}
