
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; } ;
struct i2c_algo_pcf_data {int dummy; } ;


 int I2C_M_REV_DIR_ADDR ;
 unsigned char i2c_8bit_addr_from_msg (struct i2c_msg*) ;
 int i2c_outb (struct i2c_algo_pcf_data*,unsigned char) ;

__attribute__((used)) static int pcf_doAddress(struct i2c_algo_pcf_data *adap,
    struct i2c_msg *msg)
{
 unsigned char addr = i2c_8bit_addr_from_msg(msg);

 if (msg->flags & I2C_M_REV_DIR_ADDR)
  addr ^= 1;
 i2c_outb(adap, addr);

 return 0;
}
