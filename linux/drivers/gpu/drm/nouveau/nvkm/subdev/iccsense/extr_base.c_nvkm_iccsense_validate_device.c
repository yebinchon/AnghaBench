
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_adapter {int dummy; } ;
typedef enum nvbios_extdev_type { ____Placeholder_nvbios_extdev_type } nvbios_extdev_type ;





 int nv_rd16i2cr (struct i2c_adapter*,int ,int) ;

__attribute__((used)) static bool
nvkm_iccsense_validate_device(struct i2c_adapter *i2c, u8 addr,
         enum nvbios_extdev_type type)
{
 switch (type) {
 case 130:
 case 129:
  return nv_rd16i2cr(i2c, addr, 0x0) >= 0;
 case 128:
  return nv_rd16i2cr(i2c, addr, 0xff) == 0x3220 &&
         nv_rd16i2cr(i2c, addr, 0xfe) == 0x5449;
 default:
  return 0;
 }
}
