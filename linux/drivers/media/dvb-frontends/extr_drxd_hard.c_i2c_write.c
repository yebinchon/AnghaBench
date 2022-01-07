
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct i2c_adapter {int dummy; } ;


 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static int i2c_write(struct i2c_adapter *adap, u8 adr, u8 * data, int len)
{
 struct i2c_msg msg = {.addr = adr, .flags = 0, .buf = data, .len = len };

 if (i2c_transfer(adap, &msg, 1) != 1)
  return -1;
 return 0;
}
