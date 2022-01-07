
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct twl4030_keypad {int dbg_dev; } ;


 int TWL4030_MODULE_KEYPAD ;
 int dev_warn (int ,char*,int ,int,int) ;
 int twl_i2c_write_u8 (int ,int ,int ) ;

__attribute__((used)) static int twl4030_kpwrite_u8(struct twl4030_keypad *kp, u8 data, u32 reg)
{
 int ret = twl_i2c_write_u8(TWL4030_MODULE_KEYPAD, data, reg);

 if (ret < 0)
  dev_warn(kp->dbg_dev,
   "Could not write TWL4030: %X - ret %d[%x]\n",
    reg, ret, ret);

 return ret;
}
