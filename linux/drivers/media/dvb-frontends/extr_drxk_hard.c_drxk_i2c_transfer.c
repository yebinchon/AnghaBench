
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int dummy; } ;
struct drxk_state {int i2c; scalar_t__ drxk_i2c_exclusive_lock; } ;


 int __i2c_transfer (int ,struct i2c_msg*,unsigned int) ;
 int i2c_transfer (int ,struct i2c_msg*,unsigned int) ;

__attribute__((used)) static int drxk_i2c_transfer(struct drxk_state *state, struct i2c_msg *msgs,
        unsigned len)
{
 if (state->drxk_i2c_exclusive_lock)
  return __i2c_transfer(state->i2c, msgs, len);
 else
  return i2c_transfer(state->i2c, msgs, len);
}
