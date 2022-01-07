
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drxk_state {int drxk_i2c_exclusive_lock; int i2c; } ;


 int I2C_LOCK_SEGMENT ;
 int i2c_unlock_bus (int ,int ) ;

__attribute__((used)) static void drxk_i2c_unlock(struct drxk_state *state)
{
 if (!state->drxk_i2c_exclusive_lock)
  return;

 i2c_unlock_bus(state->i2c, I2C_LOCK_SEGMENT);
 state->drxk_i2c_exclusive_lock = 0;
}
