
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct i2c_board_info {unsigned short addr; } ;
struct i2c_adapter {int dev; } ;


 unsigned short const I2C_CLIENT_END ;
 int dev_dbg (int *,char*,...) ;
 int dev_warn (int *,char*,unsigned short const) ;
 scalar_t__ i2c_check_7bit_addr_validity_strict (unsigned short const) ;
 scalar_t__ i2c_check_addr_busy (struct i2c_adapter*,unsigned short const) ;
 int i2c_default_probe (struct i2c_adapter*,unsigned short) ;
 struct i2c_client* i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;

struct i2c_client *
i2c_new_probed_device(struct i2c_adapter *adap,
        struct i2c_board_info *info,
        unsigned short const *addr_list,
        int (*probe)(struct i2c_adapter *adap, unsigned short addr))
{
 int i;

 if (!probe)
  probe = i2c_default_probe;

 for (i = 0; addr_list[i] != I2C_CLIENT_END; i++) {

  if (i2c_check_7bit_addr_validity_strict(addr_list[i]) < 0) {
   dev_warn(&adap->dev, "Invalid 7-bit address 0x%02x\n",
     addr_list[i]);
   continue;
  }


  if (i2c_check_addr_busy(adap, addr_list[i])) {
   dev_dbg(&adap->dev,
    "Address 0x%02x already in use, not probing\n",
    addr_list[i]);
   continue;
  }


  if (probe(adap, addr_list[i]))
   break;
 }

 if (addr_list[i] == I2C_CLIENT_END) {
  dev_dbg(&adap->dev, "Probing failed, no device found\n");
  return ((void*)0);
 }

 info->addr = addr_list[i];
 return i2c_new_device(adap, info);
}
