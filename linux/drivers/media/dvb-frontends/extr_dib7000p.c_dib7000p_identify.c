
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib7000p_state {int i2c_addr; } ;


 int EREMOTEIO ;
 int dib7000p_read_word (struct dib7000p_state*,int) ;
 int dprintk (char*,int,...) ;

__attribute__((used)) static int dib7000p_identify(struct dib7000p_state *st)
{
 u16 value;
 dprintk("checking demod on I2C address: %d (%x)\n", st->i2c_addr, st->i2c_addr);

 if ((value = dib7000p_read_word(st, 768)) != 0x01b3) {
  dprintk("wrong Vendor ID (read=0x%x)\n", value);
  return -EREMOTEIO;
 }

 if ((value = dib7000p_read_word(st, 769)) != 0x4000) {
  dprintk("wrong Device ID (%x)\n", value);
  return -EREMOTEIO;
 }

 return 0;
}
