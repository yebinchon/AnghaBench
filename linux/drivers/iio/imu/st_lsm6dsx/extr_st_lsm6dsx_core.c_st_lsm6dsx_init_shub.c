
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_sensors_platform_data {scalar_t__ pullups; } ;
struct TYPE_8__ {int mask; scalar_t__ addr; } ;
struct TYPE_7__ {int mask; scalar_t__ addr; } ;
struct st_lsm6dsx_shub_settings {TYPE_4__ aux_sens; TYPE_3__ pullup_en; } ;
struct st_lsm6dsx_hw {int regmap; TYPE_2__* dev; TYPE_1__* settings; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {scalar_t__ platform_data; struct device_node* of_node; } ;
struct TYPE_5__ {struct st_lsm6dsx_shub_settings shub_settings; } ;


 unsigned int ST_LSM6DSX_SHIFT_VAL (int,int ) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int regmap_update_bits (int ,scalar_t__,int ,unsigned int) ;
 int st_lsm6dsx_set_page (struct st_lsm6dsx_hw*,int) ;

__attribute__((used)) static int st_lsm6dsx_init_shub(struct st_lsm6dsx_hw *hw)
{
 const struct st_lsm6dsx_shub_settings *hub_settings;
 struct device_node *np = hw->dev->of_node;
 struct st_sensors_platform_data *pdata;
 unsigned int data;
 int err = 0;

 hub_settings = &hw->settings->shub_settings;

 pdata = (struct st_sensors_platform_data *)hw->dev->platform_data;
 if ((np && of_property_read_bool(np, "st,pullups")) ||
     (pdata && pdata->pullups)) {
  err = st_lsm6dsx_set_page(hw, 1);
  if (err < 0)
   return err;

  data = ST_LSM6DSX_SHIFT_VAL(1, hub_settings->pullup_en.mask);
  err = regmap_update_bits(hw->regmap,
      hub_settings->pullup_en.addr,
      hub_settings->pullup_en.mask, data);

  st_lsm6dsx_set_page(hw, 0);

  if (err < 0)
   return err;
 }

 if (hub_settings->aux_sens.addr) {

  err = st_lsm6dsx_set_page(hw, 1);
  if (err < 0)
   return err;

  data = ST_LSM6DSX_SHIFT_VAL(3, hub_settings->aux_sens.mask);
  err = regmap_update_bits(hw->regmap,
      hub_settings->aux_sens.addr,
      hub_settings->aux_sens.mask, data);

  st_lsm6dsx_set_page(hw, 0);
 }

 return err;
}
