
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word ;
typedef int u16 ;
struct i2c_msg {int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct dib7000p_state {int dummy; } ;


 int dib7000p_read_word (struct dib7000p_state*,int) ;
 int dib7000p_write_word (struct dib7000p_state*,int,int) ;
 struct dib7000p_state* i2c_get_adapdata (struct i2c_adapter*) ;

__attribute__((used)) static int dib7090p_rw_on_apb(struct i2c_adapter *i2c_adap,
  struct i2c_msg msg[], int num, u16 apb_address)
{
 struct dib7000p_state *state = i2c_get_adapdata(i2c_adap);
 u16 word;

 if (num == 1) {
  dib7000p_write_word(state, apb_address, ((msg[0].buf[1] << 8) | (msg[0].buf[2])));
 } else {
  word = dib7000p_read_word(state, apb_address);
  msg[1].buf[0] = (word >> 8) & 0xff;
  msg[1].buf[1] = (word) & 0xff;
 }

 return num;
}
