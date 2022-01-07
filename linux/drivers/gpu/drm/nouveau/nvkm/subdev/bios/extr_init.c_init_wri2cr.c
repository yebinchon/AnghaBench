
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvbios_init {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;
 scalar_t__ init_exec (struct nvbios_init*) ;
 struct i2c_adapter* init_i2c (struct nvbios_init*,int ) ;
 int nvkm_wri2cr (struct i2c_adapter*,int ,int ,int ) ;

__attribute__((used)) static int
init_wri2cr(struct nvbios_init *init, u8 index, u8 addr, u8 reg, u8 val)
{
 struct i2c_adapter *adap = init_i2c(init, index);
 if (adap && init_exec(init))
  return nvkm_wri2cr(adap, addr, reg, val);
 return -ENODEV;
}
