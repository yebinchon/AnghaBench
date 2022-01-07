
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ak8974 {TYPE_1__* i2c; int map; } ;
typedef int __le16 ;
struct TYPE_2__ {int dev; } ;


 int add_device_randomness (int *,size_t) ;
 int dev_warn (int *,char*,unsigned int,unsigned int,int) ;
 int memset (int *,int,size_t) ;
 int regmap_bulk_read (int ,unsigned int,int *,size_t) ;

__attribute__((used)) static void ak8974_read_calib_data(struct ak8974 *ak8974, unsigned int reg,
       __le16 *tab, size_t tab_size)
{
 int ret = regmap_bulk_read(ak8974->map, reg, tab, tab_size);
 if (ret) {
  memset(tab, 0xFF, tab_size);
  dev_warn(&ak8974->i2c->dev,
    "can't read calibration data (regs %u..%zu): %d\n",
    reg, reg + tab_size - 1, ret);
 } else {
  add_device_randomness(tab, tab_size);
 }
}
