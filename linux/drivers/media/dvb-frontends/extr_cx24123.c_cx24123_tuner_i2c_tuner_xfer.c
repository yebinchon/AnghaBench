
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct cx24123_state {int i2c; } ;


 int cx24123_repeater_mode (struct cx24123_state*,int,int) ;
 struct cx24123_state* i2c_get_adapdata (struct i2c_adapter*) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int cx24123_tuner_i2c_tuner_xfer(struct i2c_adapter *i2c_adap,
 struct i2c_msg msg[], int num)
{
 struct cx24123_state *state = i2c_get_adapdata(i2c_adap);

 cx24123_repeater_mode(state, 1, 1);
 return i2c_transfer(state->i2c, msg, num);
}
