
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int addr; int len; int* buf; int flags; } ;
struct dib3000mc_state {int i2c_addr; int i2c_adap; } ;


 int ENOMEM ;
 int EREMOTEIO ;
 int GFP_KERNEL ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;

__attribute__((used)) static int dib3000mc_write_word(struct dib3000mc_state *state, u16 reg, u16 val)
{
 struct i2c_msg msg = {
  .addr = state->i2c_addr >> 1, .flags = 0, .len = 4
 };
 int rc;
 u8 *b;

 b = kmalloc(4, GFP_KERNEL);
 if (!b)
  return -ENOMEM;

 b[0] = reg >> 8;
 b[1] = reg;
 b[2] = val >> 8;
 b[3] = val;

 msg.buf = b;

 rc = i2c_transfer(state->i2c_adap, &msg, 1) != 1 ? -EREMOTEIO : 0;
 kfree(b);

 return rc;
}
