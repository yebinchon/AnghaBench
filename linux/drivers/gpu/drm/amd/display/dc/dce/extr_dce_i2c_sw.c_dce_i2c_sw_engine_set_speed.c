
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dce_i2c_sw {int speed; int clock_delay; } ;


 int ASSERT (int) ;
 int DCE_I2C_DEFAULT_I2C_SW_SPEED ;

void dce_i2c_sw_engine_set_speed(
 struct dce_i2c_sw *engine,
 uint32_t speed)
{
 ASSERT(speed);

 engine->speed = speed ? speed : DCE_I2C_DEFAULT_I2C_SW_SPEED;

 engine->clock_delay = 1000 / engine->speed;

 if (engine->clock_delay < 12)
  engine->clock_delay = 12;
}
