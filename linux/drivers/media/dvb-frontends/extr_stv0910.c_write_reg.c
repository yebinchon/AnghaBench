
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct stv {TYPE_1__* base; } ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct i2c_adapter {int dev; } ;
struct TYPE_2__ {int adr; struct i2c_adapter* i2c; } ;


 int EIO ;
 int dev_warn (int *,char*,int ,int,int) ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static int write_reg(struct stv *state, u16 reg, u8 val)
{
 struct i2c_adapter *adap = state->base->i2c;
 u8 data[3] = {reg >> 8, reg & 0xff, val};
 struct i2c_msg msg = {.addr = state->base->adr, .flags = 0,
         .buf = data, .len = 3};

 if (i2c_transfer(adap, &msg, 1) != 1) {
  dev_warn(&adap->dev, "i2c write error ([%02x] %04x: %02x)\n",
    state->base->adr, reg, val);
  return -EIO;
 }
 return 0;
}
