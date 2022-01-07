
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int addr; int len; int* buf; int flags; } ;
struct dib3000mc_state {int i2c_addr; int i2c_adap; } ;


 int GFP_KERNEL ;
 int I2C_M_RD ;
 int dprintk (char*,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;

__attribute__((used)) static u16 dib3000mc_read_word(struct dib3000mc_state *state, u16 reg)
{
 struct i2c_msg msg[2] = {
  { .addr = state->i2c_addr >> 1, .flags = 0, .len = 2 },
  { .addr = state->i2c_addr >> 1, .flags = I2C_M_RD, .len = 2 },
 };
 u16 word;
 u8 *b;

 b = kmalloc(4, GFP_KERNEL);
 if (!b)
  return 0;

 b[0] = (reg >> 8) | 0x80;
 b[1] = reg;
 b[2] = 0;
 b[3] = 0;

 msg[0].buf = b;
 msg[1].buf = b + 2;

 if (i2c_transfer(state->i2c_adap, msg, 2) != 2)
  dprintk("i2c read error on %d\n",reg);

 word = (b[2] << 8) | b[3];
 kfree(b);

 return word;
}
