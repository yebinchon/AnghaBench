
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct drxk_state {int dummy; } ;


 int I2C_M_RD ;
 int drxk_i2c_transfer (struct drxk_state*,struct i2c_msg*,int) ;

__attribute__((used)) static int i2c_read1(struct drxk_state *state, u8 adr, u8 *val)
{
 struct i2c_msg msgs[1] = { {.addr = adr, .flags = I2C_M_RD,
        .buf = val, .len = 1}
 };

 return drxk_i2c_transfer(state, msgs, 1);
}
